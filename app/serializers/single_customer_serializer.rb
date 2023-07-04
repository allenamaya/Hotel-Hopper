class SingleCustomerSerializer < ActiveModel::Serializer
  attributes :id, :name 
  belongs_to :room
end
