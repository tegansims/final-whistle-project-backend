class PlayersController < ApplicationController
    def index
        render json: Player.all 
    end
    
    def show
        render json: Player.find(params[:id])
    end

    def create
        # byebug
        player = Player.create(player_params)
        render json: player
    end
   
    private
    def player_params
        params.require(:player).permit(:name, :team_id)
       
    end
end
