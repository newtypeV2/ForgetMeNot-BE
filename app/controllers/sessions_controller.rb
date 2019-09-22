class SessionsController < ApplicationController

    def login
        # byebug
        # user = User.find_by(params)
        user = User.find_by(username: params['username'])
        if (user && user.authenticate(params['password']))
            render json: user
        else
            render json: {message: 'Invalid Username / Password'}
        end
    end

    def test
        user = User.find_by(username: 'claire')
        render json: user
    end

private
    def default_params

    end

end


# render json: user.to_json(
#             :only => [:username],
#             :include => {
#                 :lists => {
#                     :only => [:name],
#                     :include => {
#                         :items => {
#                             :only => [:name]
#                         }
#                     }
#                 }
#             }
            
#         )