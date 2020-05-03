class CreateCarts < ActiveRecord::Migration[5.2]
  def change
    create_table :carts do |t|
      t.json :contents, null: false, default: {}
      t.integer :status, null: false
      t.integer :customer_id, null: false
      t.integer :store_id, null: false

      t.timestamps
    end
    add_index :carts, :store_id, unique: true
    add_index :carts, :customer_id, unique: true
  end
end
