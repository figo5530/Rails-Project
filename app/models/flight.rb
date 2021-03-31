class Flight < ApplicationRecord
    validates_presence_of :flight_number, :from, :to, :departure_time, :arrival_time, :flight_duration, :price
    validates_uniqueness_of :flight_number
    has_many :trips
    has_many :users, through: :trips
    scope(:number_search, ->(flight_number) {self.where("flight_number = ?", flight_number) })

end
