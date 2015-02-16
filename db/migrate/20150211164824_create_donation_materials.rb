class CreateDonationMaterials < ActiveRecord::Migration
  def change
    create_table :donation_materials do |t|
      t.references :user
      t.references :material, index: true
      t.integer :quantity
      t.references :pot

      t.timestamps
    end
  end
end
