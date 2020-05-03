class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name, null: false
      t.float :price, null: false
      t.integer :store_id, null: false

      t.timestamps
    end
    add_index :items, [:store_id, :name], unique: true
  end
end
