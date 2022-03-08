class User < ActiveRecord::Base
    has_many :reviews
    has_many :movies, through: :reviews

def favorite_product
    self.reviews.all.order(:star_rating).last
end

# Not sure this is working correctly.  Tried a couple of different methods and ran out of time for testing
# def remove_reviews(movie)
#     self.reviews.where(movie_id: movie.id).destroy_all
#     end
end