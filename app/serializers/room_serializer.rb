class RoomSerializer < ActiveModel::Serializer
  attributes :id, :room_num, :occupied
end
