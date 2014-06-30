class Offer < ActiveRecord::Base
	
	has_one :offer_type
	has_many :tasks
	has_many :participants, dependent: :destroy


	def add_participants(no_participants)
		difference = self.participants.count - no_participants
		puts "DIFF: #{difference}"
    	# Create rows for tasks and participants in db
    	if self.participants.count > no_participants 
    		puts "remove participants"

    	elsif self.participants.count < no_participants
    		puts "add participants"
    	elsif self.participants.count == 0
    		#create	
        	no_participants.times { Participant.create(:offer_id => self.id, :on_switch => 0) }
        elsif self.participants.count = no_participants
        	puts "do nothing"	
        end	
	end	

	
end
