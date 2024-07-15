class CreateCinemas < ActiveRecord::Migration[7.1]
  def change
    create_table :cinemas do |t|
      t.string :name
      t.integer :size
      t.string :location

      t.timestamps
    end
  end
end
