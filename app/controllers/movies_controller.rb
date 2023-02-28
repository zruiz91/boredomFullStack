class MoviesController < ApplicationController

    def index
        render json: Movie.all, status: :ok
    end

    def show
        render json: Movie.find(params[:id]), status: :ok
    end

    def create
        movie = Movie.create(user_params)
        render json: movie, status: :created
    end

    private

    def movie_params
        params.permit(:title, :genre, :director, :rating, :runtime, :description, :image)
    end
end
