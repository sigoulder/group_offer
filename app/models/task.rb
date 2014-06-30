class Task < ActiveRecord::Base

	attr_accessor :no_products

	belongs_to :offer
	belongs_to :task_type
	has_many :products_tasks
	has_many :products, :through => :products_tasks

	def self.order_by_task_type
		order("task_type_id ASC")
	end 
	
end
