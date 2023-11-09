class AddColumnToAirports < ActiveRecord::Migration[7.1]
  def change
    add_column :airports, :location, :string
  end
end
