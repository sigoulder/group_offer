class Task < ActiveRecord::Base

	belongs_to :offer
	has_one :task_type
	
end
