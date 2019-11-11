class BoardsController < ApplicationController

    def index
        render json: Board.all
    end

    def show
        render json: Board.find(params[:id])
    end

    def coords
        board = Board.find(params[:id])
        boardCoords = board.array_coordinates
        render json: boardCoords
    end

end
