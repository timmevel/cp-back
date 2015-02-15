class CreateMaterials < ActiveRecord::Migration
  def change
    create_table :materials do |t|
      t.string :type
      t.string :image

      t.timestamps
    end
  end
end
