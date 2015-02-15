class CreateDonationCredits < ActiveRecord::Migration
  def change
    create_table :donation_credits do |t|
      t.references :sender
      t.references :recipient

      t.timestamps
    end
  end
end
