class CreateFilters < ActiveRecord::Migration[5.2]
  def change
    create_table :filters do |t|
      t.string :filter_title, null: false
      t.string :photoUrl
      t.timestamps
    end
    add_index :filters, :filter_title, unique: true
  end
end
