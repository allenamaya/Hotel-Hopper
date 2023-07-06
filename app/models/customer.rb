class Customer < ApplicationRecord
    has_secure_password 
    validates :email, uniqueness: true
    belongs_to :room
end
