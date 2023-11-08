class ChangeCoulumnNameInFlights < ActiveRecord::Migration[7.1]
  def change
    rename_column :flights, :departure_id, :destination_id
  end
end
