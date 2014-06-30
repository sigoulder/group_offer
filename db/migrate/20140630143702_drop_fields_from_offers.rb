class DropFieldsFromOffers < ActiveRecord::Migration
  def up
  	remove_column :offers, :no_products
  	remove_column :offers, :quota
  end

  def down
  	add_column :offers, :no_products, :integer
  	add_column :offers, :quota, :integer
  end 
end
