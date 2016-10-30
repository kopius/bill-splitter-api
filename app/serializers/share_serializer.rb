class ShareSerializer < ActiveModel::Serializer
  attributes :id, :person_name, :base_cost, :cost_adjustment, :bill_id
  # uncomment this if you want every returned share object to include full bill
  # belongs_to :bill
end
