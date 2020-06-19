class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :fname, null:false
      t.string :lname, null:false
      t.string :address
      t.string :phone_number
      t.string :pass_digest, null:false
      t.string :session_token, null:false
      t.integer :current_order

      t.timestamps
    end
    add_index :users, :phone_number
    add_index :users, :address, unique: true
    add_index :users, :session_token, unique: true
  end
end
