# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_03_30_192744) do

  create_table "flights", force: :cascade do |t|
    t.string "flight_number"
    t.string "from"
    t.string "from_city"
    t.string "to"
    t.string "to_city"
    t.string "departure_time"
    t.string "arrival_time"
    t.string "flight_duration"
    t.integer "price"
    t.integer "seat_remain"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "trips", force: :cascade do |t|
    t.integer "user_id"
    t.integer "flight_id"
    t.string "traveler_first_name"
    t.string "traveler_last_name"
    t.string "traveler_gender"
    t.string "traveler_contact_info"
    t.string "seat"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
