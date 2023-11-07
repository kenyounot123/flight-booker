class CreateFlights < ActiveRecord::Migration[7.1]
  def change
    create_table :flights do |t|
      t.string :flight_duration
      t.datetime :departure_time
      t.datetime :arrival_time
      t.timestamps
    end
  end
end
