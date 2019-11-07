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
        render json: team
    end

    def top_scorer
        # byebug
        team = Team.find(params[:id])
        top_scorer = team.top_scorer
        render json: top_scorer
    end

    def top_scorers
        # byebug
        team = Team.find(params[:id])
        top_scorers = team.count_and_sort_scorers
        render json: top_scorers
    end
   
    private
    def team_params
        params.require(:team).permit(:name, :password, :password_confirmation, :sport_id)
       
    end
end
