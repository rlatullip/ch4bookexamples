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
  
  def create
  	# debugger (created then deleted in Section 4.7)
  	@movie = Movie.create!(params[:movie])
  	flash[:notice] = "#{@movie.title} was successfully created."
  	redirect_to movies_path
  end
  
  # Section 4.8
  def edit
  	@movie = Movie.find params[:id]
  end
  
  def update
  	@movie = Movie.find params[:id]
  	@movie.update_attributes!(params[:movie])
  	flash[:notice] = "#{@movie.title} was successfully updated."
  	redirect_to movie_path(@movie)
  end
  
  def destroy
  	@movie = Movie.find(params[:id])
  	@movie.destroy
  	flash[:notice] = "Movie '#{@movie.title}' deleted."
  	redirect_to movies_path
  end  	
  
  # Section 4.5 Demos
  # raise params.inspect (commented out after trying)
  logger.debug('testing, testing, 1...2...3...testing')

end
