class CreateShares < ActiveRecord::Migration
  def change
    create_table :shares do |t|
      t.string :person_name
      t.decimal :base_cost
      t.decimal :cost_adjustment
      t.references :bill, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
