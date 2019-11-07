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

    def top_assister
        # byebug
        team = Team.find(params[:id])
        top_assister = team.top_assister
        render json: top_assister
    end

    def top_assisters
        # byebug
        team = Team.find(params[:id])
        top_assisters = team.count_and_sort_assisters
        render json: top_assisters
    end
   
    private
    def team_params
        params.require(:team).permit(:name, :password, :password_confirmation, :sport_id)
       
    end
end
