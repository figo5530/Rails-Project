class CreateFlights < ActiveRecord::Migration[6.1]
  def change
    create_table :flights do |t|
      t.string :flight_number
      t.string :from
      t.string :from_city
      t.string :to
      t.string :to_city
      t.string :departure_time
      t.string :arrival_time
      t.string :flight_duration
      t.integer :price
      t.integer :seat_remain
      t.timestamps
    end
  end
end
