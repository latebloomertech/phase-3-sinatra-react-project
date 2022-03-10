class Review < ActiveRecord::Base
    belongs_to :movie
    belongs_to :user

    def print_review
        "Review for #{self.movie.name} by #{self.user.name}: #{self.star_rating}. #{self.comment}"
    end
end