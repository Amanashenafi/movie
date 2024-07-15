json.extract! movie, :id, :title, :genre, :production_year, :rating, :created_at, :updated_at
json.url movie_url(movie, format: :json)
