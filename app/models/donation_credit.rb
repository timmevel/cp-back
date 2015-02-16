class DonationCredit < ActiveRecord::Base
  belongs_to :sender, :class_name => 'User'
  belongs_to :pot
end
