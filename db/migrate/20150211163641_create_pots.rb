class CreatePots < ActiveRecord::Migration
  def change
    create_table :pots do |t|
      t.references :user, index: true
      t.text :descritpion
      t.float :cash_demand
      t.float :cash_collected
      t.integer :credits_collected

      t.timestamps
    end
  end
end
