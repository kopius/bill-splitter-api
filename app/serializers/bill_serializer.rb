class BillSerializer < ActiveModel::Serializer
  attributes :id, :group_size, :total_amount
  belongs_to :user
end
