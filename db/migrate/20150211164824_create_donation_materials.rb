class CreateDonationMaterials < ActiveRecord::Migration
  def change
    create_table :donation_materials do |t|
      t.references :sender
      t.references :material, index: true
      t.integer :quantity
      t.references :recipient

      t.timestamps
    end
  end
end
