module Api
  module V1
    class UsersController < ApplicationController
      before_action :restrict_access

      def index
        @user = User.all
        render json: @user
      end

      def show
        @user = User.find(params[:id])

        if stale?(last_modified: @user.updated_at)
          render json: @user
        end
      end


      def create
        @user = User.new(user_params)

        if @user.save
          render json: @user
        else
          render json: @user.errors, status: :unprocessable_entity
        end
      end

      def update
        @user = User.find(params[:id])

        if @user.update(user_params)
          render json: @user
        else
          render json: @user.errors, status: :unprocessable_entity
        end
      end

      def destroy
        @user = User.find(params[:id])

        if @user.present?
          @user.destroy
          render json: @user
        else
          render json: @user.errors
        end
      end

      private
        def user_params
          params.require(:user).permit(:id_unique, :username, :email, :email_verify, :password, :password_verify, :remember_me)
        end

      private
        def restrict_access
          api_key = ApiKey.find_by_access_token(params[:access_token])
          head :unauthorized unless api_key
        end
    end
  end
end
