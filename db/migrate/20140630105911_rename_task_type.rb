class RenameTaskType < ActiveRecord::Migration
  def change
  	rename_column :tasks, :type_id, :task_type_id
  end
end
