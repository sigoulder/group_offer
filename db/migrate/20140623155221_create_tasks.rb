class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.integer :offer_id
      t.integer :product_id
      t.integer :type_id
      t.boolean :on_switch

      t.timestamps
    end
  end
end
