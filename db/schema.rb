# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20161104231500) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "banners", force: :cascade do |t|
    t.string  "symbol"
    t.string  "title"
    t.text    "description"
    t.integer "homepage_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string   "name",       default: "", null: false
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.boolean  "featured"
  end

  create_table "footer_links", force: :cascade do |t|
    t.string  "title"
    t.string  "link"
    t.integer "footer_id"
  end

  create_table "footers", force: :cascade do |t|
    t.string "title"
  end

  create_table "homepages", force: :cascade do |t|
    t.string  "name"
    t.boolean "sliders",           default: true
    t.boolean "promos",            default: true
    t.boolean "featured_products", default: true
    t.boolean "banners",           default: true
    t.boolean "testimonials",      default: true
    t.boolean "newsletter",        default: true
    t.integer "setting_id"
  end

  create_table "navigation_links", force: :cascade do |t|
    t.string  "title"
    t.string  "link"
    t.boolean "dropdown"
  end

  create_table "newsletter_emails", force: :cascade do |t|
    t.string "email"
  end

  create_table "newsletters", force: :cascade do |t|
    t.string  "title"
    t.text    "description"
    t.string  "button_text"
    t.integer "homepage_id"
  end

  create_table "products", force: :cascade do |t|
    t.string  "name",        default: "",    null: false
    t.text    "description", default: "",    null: false
    t.decimal "price",       default: "0.0"
    t.integer "stock",       default: 1
    t.string  "image",       default: ""
    t.integer "category_id",                 null: false
    t.boolean "featured"
    t.index ["category_id"], name: "index_products_on_category_id", using: :btree
  end

  create_table "promos", force: :cascade do |t|
    t.string  "bg_img"
    t.string  "tagline"
    t.string  "title"
    t.string  "link"
    t.integer "homepage_id"
  end

  create_table "settings", force: :cascade do |t|
    t.string "phone"
    t.string "address"
    t.string "email"
    t.string "copyright"
    t.string "web_title"
    t.string "site_name_first"
    t.string "site_name_second"
    t.string "site_tagline"
  end

  create_table "sliders", force: :cascade do |t|
    t.string  "bg_img"
    t.string  "tagline"
    t.string  "title"
    t.text    "description"
    t.string  "button_text"
    t.string  "button_link"
    t.integer "homepage_id"
  end

  create_table "testimonials", force: :cascade do |t|
    t.string  "picture"
    t.string  "name"
    t.string  "comment"
    t.string  "job_title"
    t.string  "company"
    t.integer "homepage_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name",             default: "",    null: false
    t.string   "last_name",              default: "",    null: false
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.boolean  "admin",                  default: false
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

end
