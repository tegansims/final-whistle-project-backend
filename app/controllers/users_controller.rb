class UsersController < ApplicationController

    def index
        render json: User.all
    end

    def show
        render json: User.find(params[:id])
    end

    def login
        
        user = User.find_by(email: params[:email])
        
        if user && user.authenticate(params[:password])
            render json: user
        else
            render json: { error: 'Uh oh! Those details are invalid' }, status: 401
        end
    end
end
 