class User < ApplicationRecord
    validates :username, presence: true, uniqueness: true
    validates :email, presence: true, uniqueness: true
    has_secure_password
    has_many :trips
    has_many :flights, through: :trips
end
