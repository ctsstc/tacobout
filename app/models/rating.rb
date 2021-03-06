class Rating < ApplicationRecord
  belongs_to :taco
  belongs_to :shop


  def initialize(rating = nil)
    @rating = rating
    @cumulative_rating = 0
    @num_ratings = 0
  end

  def add_rating(new_rating)
    num_ratings += 1
    cumulative_rating += new_rating
    rating = (cumulative_rating) / num_ratings
  end
end
