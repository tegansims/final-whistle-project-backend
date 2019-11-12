class ScorersController < ApplicationController
    def index
        render json: Scorer.all 
    end
    
    def show
        render json: Scorer.find(params[:id])
    end

    def create
        player = Player.find_by(name: scorer_params['player'])
        scorer = Scorer.create(game_id:  scorer_params['game_id'], player_id: player.id)
        render json: scorer
    end

    private
    def scorer_params
        params.require(:scorer).permit(:game_id, :team_id, :player)
       
    end

end
