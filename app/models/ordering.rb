class Ordering < ApplicationRecord
  belongs_to :movie_detail
  belongs_to :cinema_placing
  belongs_to :customer
end
