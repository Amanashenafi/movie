class CinemaPlacing < ApplicationRecord
  belongs_to :movie_detail
  belongs_to :cinema
end
