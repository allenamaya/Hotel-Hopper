class Hotel < ApplicationRecord
    # relationships
    has_many :rooms, dependent: :destroy 
end
