class Flight < ApplicationRecord
    validates_presence_of :flight_number, :departure_time, :arrival_time, :flight_duration, :price
    validates_uniqueness_of :flight_number
    has_many :trips
    has_many :users, through: :trips
end
