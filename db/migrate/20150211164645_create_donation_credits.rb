class CreateDonationCredits < ActiveRecord::Migration
  def change
    create_table :donation_credits do |t|
      t.references :user
      t.integer :quantity
      t.references :pot

      t.timestamps
    end
  end
end
