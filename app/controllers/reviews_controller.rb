class ReviewsController < ApplicationController
  
  get '/movies/:id/reviews' do
    # movie = Movie.find_by(id: params[:id])
    # reviews = movie.reviews
    # reviews.all.to_json
    reviews = Review.find_by(movie_id: params[:id])
    reviews.all.to_json
  end

  get '/movies/:id/reviews/:movie_id' do
    Review.find_by(movie_id: params[:movie_id])
  end

  post '/movies/:id/reviews' do
    movie = Movie.find_by(id: params[:id])
    review = Review.create(
      name: params[:name],
      comments: params[:comments]
    )
    movie.reviews = movie.reviews << review
    reviews.to_json
  end
  
end