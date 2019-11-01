class GamesController < ApplicationController

    def index
        render json: Game.all
    end

    def show
        render json: Game.find(params[:id])
    end

    def create
        # byebug
        game = Game.create(game_params)
    end
   
    private
    def game_params
        params.require(:game).permit(:date, :opposition, :venue, :team_id)
    end

end
