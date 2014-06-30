class Product < ActiveRecord::Base
	has_many :products_tasks
	has_many :tasks, :through => :products_tasks
end
