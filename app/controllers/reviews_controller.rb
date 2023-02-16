class ReviewsController < ApplicationController
  
  get '/movies/:id/reviews' do
    movie_reviews = Review.all.filter { |r| r.movie_id == params[:id].to_i }
    movie_reviews.to_json
  end

  get '/movie/:id/reviews/' do
    # movie = Movie.find(params[:id])
    review = Review.find(params[:id])
    review.destroy
    review.to_json
  end

  post '/movies/:id/reviews' do
    movie = Movie.find(params[:id])
    review = Review.create(
      name: params[:name],
      comment: params[:comment],
      movie_id: movie.id
    )
    movie.reviews = movie.reviews << review
    movie.reviews.to_json
  end
  
end