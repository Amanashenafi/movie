class AddDayOfWeekToCinemaPlacing < ActiveRecord::Migration[7.1]
  def change
    add_column :cinema_placings, :day_of_week, :string
  end
end
