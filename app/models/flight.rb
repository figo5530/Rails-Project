class Flight < ApplicationRecord
    validates_presence_of :flight_number, :from, :to, :departure_time, :arrival_time, :flight_duration, :price
    validates_uniqueness_of :flight_number
    has_many :trips
    has_many :users, through: :trips
    scope(:city_search, ->(from_city) {self.where("from_city like ?", from_city) })
    def flight_full_info
        "#{flight_number} | #{from} | #{to} | #{departure_time} | #{arrival_time}"
    end

end
