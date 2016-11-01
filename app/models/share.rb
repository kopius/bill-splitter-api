class Share < ActiveRecord::Base
  belongs_to :bill
  has_many :adjustments

  def adjusted_cost
    base_cost - cost_adjustment
  end
end
