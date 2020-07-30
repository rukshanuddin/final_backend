require 'pry'


class SessionsController < ApplicationController
  skip_before_action :authenticate, only: [:create]
  def create
    @user = User.find_by(email: auth_params[:email])
    if @user != nil 
      if @user.authenticate(auth_params[:password])
        jwt = Auth.issue({user_id: @user.id})
        render json: {user: UserSerializer.new(@user), jwt: jwt}
      else
      render json: {error: "Password does not match database."}, status: 401
      end
    else
      render json: {error: "E-mail field: #{auth_params[:email]} is not valid"}, status: 422  
    end
  end



  private

  def auth_params
    params.require(:auth).permit(:email, :password)
  end
end