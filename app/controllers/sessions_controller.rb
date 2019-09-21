class SessionsController < ApplicationController

    def login
        byebug
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