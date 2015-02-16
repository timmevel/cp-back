class Pot < ActiveRecord::Base
  belongs_to :user
  has_many :demand_materials
  has_many :donation_cashes
  has_many :donation_credits
  has_many :donation_materials
end
