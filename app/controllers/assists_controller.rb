class AssistsController < ApplicationController
    def index
        render json: Assist.all 
    end
    
    def show
        render json: Assist.find(params[:id])
    end

    def create
        player = Player.find_by(name: assist_params['player'])
        assist = Assist.create(game_id:  assist_params['game_id'], player_id: player.id)
        render json: assist
    end

    private
    def assist_params
        params.require(:assist).permit(:game_id, :team_id, :player)
       
    end
end
