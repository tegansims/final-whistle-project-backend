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
        category = Category.find(params['game']['category_id'])
        # byebug

        if home && away
            game.score = home+'-'+away
        end

        if category
            if category.id == 1
                game.mom_winner = game.count_and_sort_votes(1)
            elsif category.id == 2
                game.dod_winner = game.count_and_sort_votes(2)
            end
        end

        game.save
        render json: game
    end

    def update_winners

    end
   
    private
    def game_params
        params.require(:game).permit(:date, :opposition, :venue, :team_id)
    end

end
