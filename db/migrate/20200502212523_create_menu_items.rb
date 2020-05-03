class CreateMenuItems < ActiveRecord::Migration[5.2]
  def change
    create_table :menu_items do |t|
      t.integer :menu_id, null: false
      t.integer :item_id, null: false
      t.integer :rank, null: false
      t.integer :store_id, null: false

      t.timestamps
    end
    add_index :menu_items, [:menu_id, :item_id], unique: true
    add_index :menu_items, [:menu_id, :rank], unique: true
  end
end
