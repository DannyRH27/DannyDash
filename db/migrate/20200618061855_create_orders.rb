class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.json :contents, null: false, default: {}
      t.integer :customer_id, null: false
      t.json :store, null: false, default: {}
      t.numeric :total, null: false
      t.string :delivery_eta
      t.timestamps
    end
  end
end
