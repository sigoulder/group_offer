class CreateParticipantsTasks < ActiveRecord::Migration
  def change
    create_table :participants_tasks do |t|
      t.integer :task_id
      t.integer :participant_id
      t.integer :offer_id
      t.boolean :value

      t.timestamps
    end
  end
end
