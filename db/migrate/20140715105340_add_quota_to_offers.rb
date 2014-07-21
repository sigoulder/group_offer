class AddQuotaToOffers < ActiveRecord::Migration
  def change
  	add_column :offers, :quota, :integer
  end
end
