class Share < ActiveRecord::Base
  belongs_to :bill
  has_many :adjustments, dependent: :destroy

  def adjusted_cost
    return false unless adjustments

    bill = Bill.find(bill_id)
    num_people = bill.num_people
    cost_adjustment = 0
    adjustments.each do |adjustment|
      if adjustment.did_participate
        cost_adjustment += (adjustment.price / adjustment.num_participants) -
                           (adjustment.price / num_people)
      else
        cost_adjustment -= adjustment.price / num_people
      end
    end
    base_cost + cost_adjustment
  end
end
