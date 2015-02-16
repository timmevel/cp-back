class CreateMaterials < ActiveRecord::Migration
  def change
    create_table :materials do |t|
      t.string :type_of_good
      t.string :image

      t.timestamps
    end
  end
end
