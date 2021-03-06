class VotesController < ApplicationController
    def index
        render json: Vote.all
    end

    def show
        render json: Vote.find(params[:id])
    end


    def create
        
        mom = Player.find_by(name: params['vote']['mom'])
        dod = Player.find_by(name: params['vote']['dod'])
        
        momVote = Vote.create(category_id: 1, user_id: params['vote']['user_id'], game_id: params['vote']['game_id'], player_id: mom.id, comment: params['vote']['momComment'], points: 1)
        dodVote = Vote.create(category_id: 2, user_id: params['vote']['user_id'], game_id: params['vote']['game_id'], player_id: dod.id, comment: params['vote']['dodComment'], points: 1)
        if momVote && dodVote
            render json: Vote.all
        else
            render json: { errors: vote.errors.full_messages }, status: :not_acceptable
        end
    end
   
    private
    def vote_params
        params.require(:vote).permit(:category_id, :user_id, :game_id, :player_id, :comment, :points )
       
    end
end
