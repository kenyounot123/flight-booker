class AddLocationToAirports < ActiveRecord::Migration[7.1]
  def change
    rename_column :airports, :airport_code, :code
    remove_column :flights, :departure_date
    change_column :flights, :departure_time, :datetime
  end
end
