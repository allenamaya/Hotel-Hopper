class SingleRoomSerializer < ActiveModel::Serializer
  attributes :id, :room_num, :available, :room_type, :image
  has_many :customers
end
