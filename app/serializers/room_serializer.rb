class RoomSerializer < ActiveModel::Serializer
  attributes :id, :room_num, :room_type, :available, :image
end
