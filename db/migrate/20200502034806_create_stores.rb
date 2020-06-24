class CreateStores < ActiveRecord::Migration[5.2]
  def change
    create_table :stores do |t|
      t.string :name, null: false
      t.text :address, null: false
      t.text :hours, null: false, array: true, default:[]
      t.text :description
      t.integer :status, null: false
      t.point :coordinate, null: false
      t.numeric :rating, null: false 
      t.integer :rating_count, null: false
      t.string :price_rating
      t.timestamps
    end
    add_index :stores, :name, unique: true
  end
end
