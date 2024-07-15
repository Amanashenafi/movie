class CreateOrderings < ActiveRecord::Migration[7.1]
  def change
    create_table :orderings do |t|
      t.references :movie_detail, null: false, foreign_key: true
      t.references :cinema_placing, null: false, foreign_key: true

      t.timestamps
    end
  end
end
