class User < ActiveRecord::Base
    has_many :reviews
    has_many :movies, through: :reviews

def favorite_movie
    self.reviews.all.order(:star_rating).last
end

def create_review(movie,rating,comment)
    Review.create(star_rating: rating, comment: comment, user_id: self.id, movie_id: movie.id)
end

def all_user_reviews
    self.reviews.each do |review|
        "#{review.movie.name} rating: #{review.movie.star_rating}, review: #{review.movie.comment}"
    end
end

def delete_review(movie)
    review = self.reviews.find {|review| review.movie_id == movie.id}
    review.destroy
end

def delete_all_reviews(movie)
    review = self.movies.where(movie_id: movie.id)
    review.destroy_all
end

end