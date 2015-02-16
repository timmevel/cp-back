class CreateDonationCashes < ActiveRecord::Migration
  def change
    create_table :donation_cashes do |t|
      t.references :user
      t.float :amount
      t.references :pot

      t.timestamps
    end
  end
end
