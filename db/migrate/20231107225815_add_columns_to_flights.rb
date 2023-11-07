class AddColumnsToFlights < ActiveRecord::Migration[7.1]
  def change
    add_column :flights, :origin_id, :bigint
    add_column :flights, :departure_id, :bigint
  end
end
