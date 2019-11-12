class BoardsController < ApplicationController

    def index
        render json: Board.all
    end

    def show
        render json: Board.find(params[:id])
    end


    def create
        byebug
        coordsManipulated = params['coordinates'].values.map{|c| c.values}.flatten.map{|c|c.to_i}
        board = Board.create(team_id: params['team_id'] , name: params['name'], coordinates: coordsManipulated)
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
