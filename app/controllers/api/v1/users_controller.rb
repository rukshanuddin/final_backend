module Api 
  module V1
    class UsersController < ApplicationController
      skip_before_action :authenticate, only: [:create]
      before_action :set_user, only: [:show, :update]
      before_action :authorize_user, only: [:update]
      
      def create
        return render json: {}, status: :forbidden if current_user.present?
        user = User.new(user_params)
        if user.save
          render json: { jwt: user.to_jwt }, status: :created
        else
          render json: user.errors, status: :unprocessable_entity
        end
      end

      def show
        render json: @user 
      end

      def update 
        if @user.update(user_params)
          render json: @user, status: 200
        else
          render json: @user.errors, status: :unprocessable_entity
        end
      end

    private

      def set_user
        @user = User.find(params[:id])
      end

      def authorize_user
        render json: {}, status: :forbidden unless current_user == @user
      end

      def user_params
        params.require(:user).permit(:first_name, :last_name, :email, :password)
      end

    end
  end
end