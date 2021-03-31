class Trip < ApplicationRecord
    belongs_to :user
    belongs_to :flight
    validates_presence_of :traveler_first_name, :traveler_last_name, :traveler_gender, :traveler_contact_info

    scope(:trip_search, ->(traveler_first_name) {self.where("traveler_first_name = ?", traveler_first_name) })
end
