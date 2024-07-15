class CreateMovieDetails < ActiveRecord::Migration[7.1]
  def change
    create_table :movie_details do |t|
      t.string :title
      t.string :genre
      t.date :production_year
      t.decimal :rating

      t.timestamps
    end
  end
end
