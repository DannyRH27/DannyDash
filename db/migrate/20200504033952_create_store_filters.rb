class CreateStoreFilters < ActiveRecord::Migration[5.2]
  def change
    create_table :store_filters do |t|
      t.integer :store_id, null: false
      t.integer :filter_id, null: false

      t.timestamps
    end
    add_index :store_filters, [:store_id, :filter_id], unique: true
    add_index :store_filters, [:filter_id, :store_id], unique: true
  end
end
