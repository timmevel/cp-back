class User < ActiveRecord::Base
	has_many 	:pots, :through => :donated_credits
	
	has_many 	:pots, :through => :donated_cash

	has_many 	:pots, :through => :donated_material
end