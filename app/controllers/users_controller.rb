class UsersController < ApplicationController

    def index
        render json: User.all, status: :ok
    end

    def show
        render json: User.find(params[:id]), status: :ok
    end

    def create
        user = User.create(user_params)
        render json: user, status: :created
    end

    private

    def user_params
        params.permit(name:, email:)
    end
end
