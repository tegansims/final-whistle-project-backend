class ApplicationController < ActionController::API


    def get_current_user
        id = decode_token['id']
        User.find_by(id: id)
    end

    def decode_token
        begin
          JWT.decode(token, ENV['RAILS_SECRET'])[0]
        rescue
          {}
        end
    end

    def token
        request.headers['Authorization'] 
    end

    def issue_token(data)
        JWT.encode(data, ENV['RAILS_SECRET'])
    end

    def secret
        'shshsh'
    end


end
