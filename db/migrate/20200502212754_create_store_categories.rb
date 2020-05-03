class CreateStoreCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :store_categories do |t|
      t.integer :store_id, null: false
      t.integer :category_id, null: false

      t.timestamps
    end
    add_index :store_categories, [:store_id, :category_id], unique: true
    add_index :store_categories, [:category_id, :store_id], unique: true
  end
end
