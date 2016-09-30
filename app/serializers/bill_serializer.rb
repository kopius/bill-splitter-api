class BillSerializer < ActiveModel::Serializer
  attributes :id, :num_people, :total_amount
  belongs_to :user
end
