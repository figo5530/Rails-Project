class CreateTrips < ActiveRecord::Migration[6.1]
  def change
    create_table :trips do |t|
      t.integer :user_id
      t.integer :flight_id
      t.string :traveler_first_name
      t.string :traveler_last_name
      t.string :traveler_gender
      t.string :traveler_contact_info
      t.timestamps
    end
  end
end
