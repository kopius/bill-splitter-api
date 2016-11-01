class CreateAdjustments < ActiveRecord::Migration
  def change
    create_table :adjustments do |t|
      t.string :label
      t.decimal :price
      t.boolean :did_participate
      t.integer :num_participants
      t.references :share, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
