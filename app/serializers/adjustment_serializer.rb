class AdjustmentSerializer < ActiveModel::Serializer
  attributes :id, :label, :price, :did_participate, :num_participants, :share_id
  # has_one :share
end
