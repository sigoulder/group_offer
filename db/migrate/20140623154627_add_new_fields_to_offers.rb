class AddNewFieldsToOffers < ActiveRecord::Migration
  def change
    add_column :offers, :max_participants, :integer
    add_column :offers, :no_products, :integer
  end
end
