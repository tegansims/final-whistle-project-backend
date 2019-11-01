class TeamsController < ApplicationController

    def index
        render json: Team.all 
    end
    
    def show
        render json: Team.find(params[:id])
    end

    def create
        # byebug
        team = Team.create(team_params)
    end
   
    def team_params
        params.require(:team).permit(:name, :password, :password_confirmation, :sport_id)
       
    end
end
