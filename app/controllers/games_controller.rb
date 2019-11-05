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
        render json: game
    end


    def edit
    end

    def update
        
        game = Game.find(params['game']['game_id'])
        home = params['game']['homeScore']
        away = params['game']['awayScore']

        game.score = home+'-'+away
        game.save
        render json: game
    end
   
    private
    def game_params
        params.require(:game).permit(:date, :opposition, :venue, :team_id)
    end

end
