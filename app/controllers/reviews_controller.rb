class ReviewsController < ApplicationController
  
  get '/movies/:id/reviews' do
    movie_reviews = Review.all.filter { |r| r.movie_id == params[:id].to_i }
    # (movie_id: params[:movie_id])
    movie_reviews.to_json
  end

  get '/movies/:movie_id/reviews/:id' do
    Review.find(params[:id]).to_json
  end

  post '/movies/:id/reviews' do
    movie = Movie.find(params[:id])
    review = Review.create(
      name: params[:name],
      comments: params[:comments],
      movie_id: movie.id
    )
    movie.reviews = movie.reviews << review
    movie.reviews.to_json
  end
  
end