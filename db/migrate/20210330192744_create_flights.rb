class CreateFlights < ActiveRecord::Migration[6.1]
  def change
    create_table :flights do |t|
      t.string :flight_number
      t.string :departure_time
      t.string :arrival_time
      t.string :flight_duration
      t.integer :price
      t.timestamps
    end
  end
end
