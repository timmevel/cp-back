class DonationMaterial < ActiveRecord::Base
  belongs_to :user
  belongs_to :material
  belongs_to :user
  
end
