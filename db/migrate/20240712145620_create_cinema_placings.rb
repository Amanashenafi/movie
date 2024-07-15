class CreateCinemaPlacings < ActiveRecord::Migration[7.1]
  def change
    create_table :cinema_placings do |t|
      t.references :movie_detail, null: false, foreign_key: true
      t.references :cinema, null: false, foreign_key: true
      t.time :time

      t.timestamps
    end
  end
end
