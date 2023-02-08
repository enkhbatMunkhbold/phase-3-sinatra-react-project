class MoviesController < ApplicationController

  get '/movies' do
    Movie.all.to_json
  end

  get '/movies/:id' do
    movie = Movie.find_by(id: params[:id])
    if movie
      movie.to_json
    else
      "404 - Movie not found!"
    end
  end

  post '/movies' do
    Movie.create(
      name: params[:name],
      actors: params[:actors],
      img_link: params[:img_link],
      genre: params[:genre],
      year: params[:year],
      plot: params[:plot],
      rating: params[:rating]
    ).to_json
  end

  patch '/movies/:id' do
    def updateMovie (option)
      movie = Movie.find(params[:id])
      movie.update(option).to_json
    end
    updateMovie
  end

  delete '/movies/:id' do
    movie = Movie.find(params[:id])
    movie.destroy
    movie.to_json
  end
  
end