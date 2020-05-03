class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.integer :user_id, null: false
      t.integer :store_id, null: false
      t.integer :rating, null: false
      t.text :content

      t.datetime :created_at
      t.datetime :updated_at
    end
    add_index :reviews, [:user_id, :store_id]
    add_index :reviews, :user_id
    add_index :reviews, :store_id
    add_index :reviews, :rating
    add_index :reviews, :created_at
  end
end
