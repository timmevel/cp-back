class DonationCredit < ActiveRecord::Base
  belongs_to :user
  belongs_to :pot
end
