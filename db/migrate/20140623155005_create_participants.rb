class CreateParticipants < ActiveRecord::Migration
  def change
    create_table :participants do |t|
      t.integer :member_id
      t.integer :offer_id
      t.integer :quota
      t.boolean :on_switch

      t.timestamps
    end
  end
end
