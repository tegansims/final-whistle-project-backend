class UsertypesController < ApplicationController
    
    def index
        usertypes = Usertype.all 
        render json: usertypes
    end
    
end
