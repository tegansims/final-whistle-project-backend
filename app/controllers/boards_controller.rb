class BoardsController < ApplicationController

    def index
        render json: Board.all
    end

    def show
        render json: Board.find(params[:id])
    end


    def create
        # byebug
        # coordsManipulated = params['coordinates'].values.map{|c| c.values}.flatten.map{|c|c.to_i}
        newCoords = []
        array = params['coordinates'].values.map{|v| v.values}.flatten
        newCoords.push('red').push(array.in_groups(2)[0])
        newCoords.push('blue').push(array.in_groups(2)[1])

        board = Board.create(team_id: params['team_id'] , name: params['name'], coordinates: newCoords)
        coordsTrimmed = board.coordinates.tr('\"', '')
        board.update(coordinates: coordsTrimmed)
        render json: board
    end


    def coords
        board = Board.find(params[:id])
        boardCoords = board.array_coordinates
        render json: boardCoords
    end

    private
    def board_params
        params.require(:board).permit(:name, :team_id, :coordinates)
       
    end

end

# array = params['coordinates'].values.map{|v| v.values}.flatten
# [10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 219.60510635375977, 28.482147216796875, 10, 35, 10, 35, 10, 35, 10, 35, 10, 35, 10, 35, 10, 35, 10, 35, 10, 35, 10, 35, 218.11088752746582, 80.42500305175781]
# array.in_groups(2)
# [[10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 219.60510635375977, 28.482147216796875], [10, 35, 10, 35, 10, 35, 10, 35, 10, 35, 10, 35, 10, 35, 10, 35, 10, 35, 10, 35, 218.11088752746582, 80.42500305175781]]

# newCoords.push('red')
# newCoords.push(array.in_groups(2)[0])
# newCoords.push('blue')
# newCoords.push(array.in_groups(2)[1])