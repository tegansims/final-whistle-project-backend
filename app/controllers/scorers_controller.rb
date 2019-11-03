class ScorersController < ApplicationController
    def index
        render json: Scorer.all 
    end
    
    def show
        render json: Scorer.find(params[:id])
    end
end
