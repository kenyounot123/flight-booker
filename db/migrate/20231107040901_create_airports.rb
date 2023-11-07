class CreateAirports < ActiveRecord::Migration[7.1]
  def change
    create_table :airports do |t|
      t.string :airport_code
      t.string :string

      t.timestamps
    end
  end
end
