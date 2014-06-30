class CreateProductsTasks < ActiveRecord::Migration
  def change
    create_table :products_tasks do |t|
      t.references :product, index: true
      t.references :task, index: true

      t.timestamps
    end
  end
end
