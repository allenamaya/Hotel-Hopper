class CustomerSerializer < ActiveModel::Serializer
  attributes :id, :name, :date_in, :date_out, :email
  belongs_to :room
end
