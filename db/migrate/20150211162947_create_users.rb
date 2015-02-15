class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :fname
      t.string :lname
      t.date :date_of_birth
      t.integer :credits

      t.timestamps
    end
  end
end
