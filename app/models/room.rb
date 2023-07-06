class Room < ApplicationRecord
    # relationships
     has_many :customers, dependent: :destroy 
     belongs_to :hotel
end
