class Room < ApplicationRecord
    # relationships
     has_one :customer, dependent: :destroy 
     belongs_to :hotel
end
