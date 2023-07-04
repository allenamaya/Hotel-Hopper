class OccupiedRoomSerializer < ActiveModel::Serializer
  attributes :id, :room_num 
  belongs_to :hotel
end
