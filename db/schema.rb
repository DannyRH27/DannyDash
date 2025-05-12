# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2025_05_12_214049) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", precision: nil, null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", precision: nil, null: false
    t.string "service_name", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "carts", force: :cascade do |t|
    t.json "contents", default: {}, null: false
    t.integer "customer_id", null: false
    t.integer "store_id"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["customer_id"], name: "index_carts_on_customer_id", unique: true
    t.index ["store_id"], name: "index_carts_on_store_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "category_title", null: false
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["category_title"], name: "index_categories_on_category_title", unique: true
  end

  create_table "filters", force: :cascade do |t|
    t.string "filter_title", null: false
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["filter_title"], name: "index_filters_on_filter_title", unique: true
  end

  create_table "items", force: :cascade do |t|
    t.string "name", null: false
    t.float "price", null: false
    t.text "description"
    t.integer "store_id", null: false
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["store_id", "name"], name: "index_items_on_store_id_and_name", unique: true
  end

  create_table "menu_items", force: :cascade do |t|
    t.integer "menu_id", null: false
    t.integer "item_id", null: false
    t.integer "rank", null: false
    t.integer "store_id", null: false
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["menu_id", "item_id"], name: "index_menu_items_on_menu_id_and_item_id", unique: true
    t.index ["menu_id", "rank"], name: "index_menu_items_on_menu_id_and_rank", unique: true
  end

  create_table "menus", force: :cascade do |t|
    t.string "title"
    t.integer "rank", null: false
    t.integer "store_id", null: false
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["store_id", "rank"], name: "index_menus_on_store_id_and_rank", unique: true
    t.index ["store_id"], name: "index_menus_on_store_id"
  end

  create_table "orders", force: :cascade do |t|
    t.json "contents", default: {}, null: false
    t.integer "customer_id", null: false
    t.json "store", default: {}, null: false
    t.json "delivered_date"
    t.decimal "total", null: false
    t.string "delivery_eta"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "store_id", null: false
    t.integer "rating", null: false
    t.text "content"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.index ["created_at"], name: "index_reviews_on_created_at"
    t.index ["rating"], name: "index_reviews_on_rating"
    t.index ["store_id"], name: "index_reviews_on_store_id"
    t.index ["user_id", "store_id"], name: "index_reviews_on_user_id_and_store_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "store_categories", force: :cascade do |t|
    t.integer "store_id", null: false
    t.integer "category_id", null: false
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["category_id", "store_id"], name: "index_store_categories_on_category_id_and_store_id", unique: true
    t.index ["store_id", "category_id"], name: "index_store_categories_on_store_id_and_category_id", unique: true
  end

  create_table "store_filters", force: :cascade do |t|
    t.integer "store_id", null: false
    t.integer "filter_id", null: false
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["filter_id", "store_id"], name: "index_store_filters_on_filter_id_and_store_id", unique: true
    t.index ["store_id", "filter_id"], name: "index_store_filters_on_store_id_and_filter_id", unique: true
  end

  create_table "stores", force: :cascade do |t|
    t.string "name", null: false
    t.text "address", null: false
    t.text "hours", default: [], null: false, array: true
    t.text "description"
    t.integer "status", null: false
    t.point "coordinate", null: false
    t.decimal "rating", null: false
    t.integer "rating_count", null: false
    t.string "price_rating"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["name"], name: "index_stores_on_name", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string "fname", null: false
    t.string "lname", null: false
    t.string "address"
    t.string "phone_number"
    t.string "pass_digest", null: false
    t.string "session_token", null: false
    t.integer "current_order"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at", precision: nil
    t.datetime "remember_created_at", precision: nil
    t.string "provider"
    t.string "uid"
    t.string "name"
    t.text "image"
    t.index ["address"], name: "index_users_on_address"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["phone_number"], name: "index_users_on_phone_number"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["session_token"], name: "index_users_on_session_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
end
