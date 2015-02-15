class User < ActiveRecord::Base
	has_many 	:donated_credits, 
				:class_name => 'DonationCredits', 
				:foreign_key => 'sender_id'
	
	has_many 	:received_credits, 
				:class_name => 'DonationCredits', 
				:foreign_key => 'recipient_id'
	
	has_many 	:donated_cash, 	
				:class_name => 'DonationCash', 
				:foreign_key => 'sender_id'
	
	has_many 	:received_cash, 
				:class_name => 'DonationCash', 
				:foreign_key => 'recipient_id'

	has_many 	:donated_material, 
				:class_name => 'DonationMaterial', 
				:foreign_key => 'sender_id'
	
	has_many 	:received_material, 
				:class_name => 'DonationMaterial', 
				:foreign_key => 'recipient_id'
end
