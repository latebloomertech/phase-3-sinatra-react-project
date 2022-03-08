class Review < ActiveRecord::Base
    belongs_to :movie
    belongs_to :user

    # def print_review
    #     puts "Review for #{self.movie.name} by #{self.user.name}: #{self.star_rating}. #{self.comment}"
    # end
end