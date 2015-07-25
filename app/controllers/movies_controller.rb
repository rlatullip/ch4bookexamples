class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def show
    id = params[:id] #retrieve movie ID from URI route
    @movie = Movie.find(id) # look up movie by unique ID
  end
  
  # Section 4.6
  def new
  	# default: render 'new' template
  end
  
  # Section 4.5 Demos
  # raise params.inspect (commented out after trying)
  logger.debug('testing, testing, 1...2...3...testing')

end
