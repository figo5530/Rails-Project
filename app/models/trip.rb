class Trip < ApplicationRecord
    belongs_to :user
    belongs_to :flight
    validates :name, presence: true, uniqueness: true
end
