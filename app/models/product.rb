
class Product < ActiveRecord::Base    
    has_many :reviews
    has_many :users, through: :reviews

    def leave_review(user, star_rating, comment)
        Review.create(
            user_id: user.id,
            star_rating: star_rating,
            product_id: self.id,            
            comment: comment
        )

    end

    def print_all_reviews
        self.reviews.each {|review| review.print_review}

    end

    def average_rating
        self.reviews.average(:star_rating).to_f

    end

end