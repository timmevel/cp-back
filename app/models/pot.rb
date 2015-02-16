class Pot < ActiveRecord::Base
  belongs_to :user
  has_many :users, :through => :donation_cashes
  has_many :users, :through => :donation_credits
  has_many :users, :through => :donation_materials  
  has_many :demand_materials
end
