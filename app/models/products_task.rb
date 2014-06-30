class ProductsTask < ActiveRecord::Base
  belongs_to :product
  belongs_to :task
end
