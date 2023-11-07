class RemoveStringColumnInAirport < ActiveRecord::Migration[7.1]
  def change
    remove_column :airports, :string, :string
  end
end
