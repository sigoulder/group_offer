class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.integer :offer_id
      t.integer :type_id
      t.boolean :on_switch
      t.integer :quota
      t.timestamps
    end
  end
end
