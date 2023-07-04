class SingleRoomSerializer < ActiveModel::Serializer
  attributes :id, :room_num, :occupied
  has_one :customer
end
