class MoviesController < ApplicationController

  get '/movies' do
    Movie.all.to_json(:include => :reviews)
  end

  # konata.to_json(:include => :posts)
  # # => {"id": 1, "name": "Konata Izumi", "age": 16,
  #       "created_at": "2006/08/01", "awesome": true,
  #       "posts": [{"id": 1, "author_id": 1, "title": "Welcome to the weblog"},
  #                 {"id": 2, author_id: 1, "title": "So I was thinking"}]}

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
    movie = Movie.find(params[:id])
    movie.destroy
    movie.to_json
  end
  
end