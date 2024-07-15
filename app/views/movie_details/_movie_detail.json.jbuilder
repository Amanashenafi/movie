json.extract! movie_detail, :id, :title, :genre, :production_year, :rating, :created_at, :updated_at
json.url movie_detail_url(movie_detail, format: :json)
