class CreateDemandMaterials < ActiveRecord::Migration
  def change
    create_table :demand_materials do |t|
      t.references :pot, index: true
      t.references :material, index: true
      t.integer :quantity

      t.timestamps
    end
  end
end
