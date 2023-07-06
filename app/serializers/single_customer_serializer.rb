class SingleCustomerSerializer < ActiveModel::Serializer
  attributes :id, :name, :email
  belongs_to :room
end
