module Api
  module V1
    class UsersController < ApplicationController
      def index
        @user = User.all
        render json: @user
      end

      def show
        @user = User.find(params[:id])
        render json: @user
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
          params.require(:user).permit(:id_unique, :username, :email, :email_verification, :password, :password_verification, :remember_me, :status_online)
        end
    end
  end
end

