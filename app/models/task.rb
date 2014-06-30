class Task < ActiveRecord::Base

	belongs_to :offer
	has_one :offer_type, foreign_key: "id", primary_key: "type_id"
	
end
