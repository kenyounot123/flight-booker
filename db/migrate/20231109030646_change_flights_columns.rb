class ChangeFlightsColumns < ActiveRecord::Migration[7.1]
  def change
    remove_column :flights, :arrival_time
  end
end
