class Share < ActiveRecord::Base
  belongs_to :bill

  def adjusted_cost
    base_cost - cost_adjustment
  end
end
