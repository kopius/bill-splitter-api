class RemoveCostAdjustmentFromShares < ActiveRecord::Migration
  def change
    remove_column :shares, :cost_adjustment, :decimal
  end
end
