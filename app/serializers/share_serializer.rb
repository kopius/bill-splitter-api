class ShareSerializer < ActiveModel::Serializer
  attributes :id, :person_name, :base_cost, :cost_adjustment
  belongs_to :bill
end
