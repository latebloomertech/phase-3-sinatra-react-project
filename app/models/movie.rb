class Movie < ActiveRecord::Base
    has_many :reviews
    has_many :users, through: :reviews

def leave_review(user, star_rating, comment)
    Review.create(user_id: user.id, star_rating: star_rating, comment: comment, movie_id: self.id)
end

def print_all_reviews
   "Review for #{self.name} by #{self.users.name}: #{self.reviews.star_rating}. #{self.reviews.comment}"
end

def average_rating
    self.reviews.all.average(:star_rating)
end

end