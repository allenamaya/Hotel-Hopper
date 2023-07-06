class SingleHotelSerializer < ActiveModel::Serializer
  attributes :id, :name, :image
  has_many :rooms
end
