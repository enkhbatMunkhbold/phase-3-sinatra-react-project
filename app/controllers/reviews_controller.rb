class ReviewsController < ApplicationController
  
  get '/movies/:id/reviews' do
    movie_reviews = Review.all.filter { |r| r.movie_id == params[:id].to_i }
    movie_reviews.to_json
  end

  delete '/movies/:movie_id/reviews/:id' do   
    movie = Movie.find(params[:movie_id])
    review = movie.reviews.find(params[:id])       
    review.destroy
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