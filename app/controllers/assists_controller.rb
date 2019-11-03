class AssistsController < ApplicationController
    def index
        render json: Assist.all 
    end
    
    def show
        render json: Assist.find(params[:id])
    end
end
