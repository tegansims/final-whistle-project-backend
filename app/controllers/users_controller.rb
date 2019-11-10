class UsersController < ApplicationController

    def index
        render json: User.all
    end

    def show
        render json: User.find(params[:id])
    end


    def create
        user = User.create(user_params)
        # byebug

        if user.valid?
            render json: { token: issue_token({id: user.id}), user: UserSerializer.new(user) }
        else
            render json: { errors: user.errors.full_messages }, status: :not_acceptable
        end
    end

    def login    
        user = User.find_by(email: params[:email])
        
        if user && user.authenticate(params[:password])
            render json: { user: user, token: issue_token({ id: user.id }) }
        else
            render json: { error: 'Uh oh! Those details are invalid' }, status: 401
        end
    end

    def validate
        user = get_current_user
        if user
            render json: { user: user, token: issue_token({ id: user.id })  }
        else
            render json: {error: 'Invalid Token'}, status: 401
        end
    end

    def edit
    
    end

    def update
        
        user = User.find(params['user']['user_id']) 
        team = Team.find_by(name: params['user']['team']) || Team.find(params['user']['team_id'])
        player = Player.find_by(name: params['user']['player'])
        category = Usertype.find_by(usertype: params['user']['usertype'])
        # byebug
        if user && team.authenticate(params['user']['password'])
    
            if team
                user.team_id = team.id
            end
            
            if category
                user.usertype_id = category.id
                if category.id == 2 || category.id == 3
                    user.player_id = ''
                end
            end
            if player
                user.player_id = player.id
            end
            user.save(validate:false)
            render json: { user: user, token: issue_token({ id: user.id })  }
        else 
            render json: { error: 'Uh oh! Those details are invalid' }, status: 401
        end
    end

    private
    def user_params
        params.require(:user).permit(:email, :password, :password_confirmation, :team_id, :usertype_id)
       
    end
end
 