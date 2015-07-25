class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def show
    id = params[:id] #retrieve movie ID from URI route
    @movie = Movie.find(id) # look up movie by unique ID
  end

end