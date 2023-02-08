class MoviesController < ApplicationController

  get '/movies' do
    Movie.all.to_json
  end
  
end