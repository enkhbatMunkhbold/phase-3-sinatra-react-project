class ReviewsController < ApplicationController
  
  get '/reviews' do
    Review.all.to_json
  end

  get '/reviews/:movie_id' do
    Review.find_by(movie_id: params[:movie_id])
  end

  post '/reviews' do
    Review.create(
      name: params[:name],
      comments: params[:comments]
    )
  end
  
end