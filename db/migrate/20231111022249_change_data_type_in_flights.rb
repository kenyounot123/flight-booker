class ChangeDataTypeInFlights < ActiveRecord::Migration[7.1]
  def change
    change_column :flights, :departure_time, :datetime
  end
end
