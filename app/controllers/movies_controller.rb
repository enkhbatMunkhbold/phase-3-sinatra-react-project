class MoviesController < ApplicationController

  get '/movies' do
    Movie.all.to_json(include: :reviews)
  end

  get '/movies/:id' do
    movie = Movie.find(params[:id])
    if movie
      movie.to_json(:include => :reviews)
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
      rating: params[:rating],
      favorite: params[:favorite] 
    ).to_json
  end

  patch '/movies/:id' do 
    movie = Movie.find(params[:id])
    movie.update(favorite: params[:favorite])
    movie.to_json
  end

  delete '/movies/:id' do
    Movie.find(params[:id]).destroy
  end
  
end