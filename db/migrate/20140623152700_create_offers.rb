class CreateOffers < ActiveRecord::Migration
  def change
    create_table :offers do |t|
      t.string :name
      t.integer :min_participants
      t.date :start_at
      t.date :end_at
      t.integer :quota

      t.timestamps
    end
  end
end
