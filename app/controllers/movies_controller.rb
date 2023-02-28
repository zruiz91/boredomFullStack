class MoviesController < ApplicationController

    def index
        render json: Movie.all, status: :ok
    end

    def show
        render json: Movie.find(params[:id]), status: :ok
    end
end
