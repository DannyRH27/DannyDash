class CreateMenus < ActiveRecord::Migration[5.2]
  def change
    create_table :menus do |t|
      t.string :title
    #   t.json :items, null: false
      t.integer :rank, null: false
      t.integer :store_id, null: false

      t.timestamps
    end
    add_index :menus, :store_id
    add_index :menus, [:store_id, :rank], unique: true
  end
end
