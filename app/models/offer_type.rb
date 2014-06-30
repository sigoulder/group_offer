class OfferType < ActiveRecord::Base

	# Should be actually called "Task Type" tbh...
	has_and_belongs_to_many :task, foreign_key: "type_id", primary_key: "id"
end
