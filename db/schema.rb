# encoding: UTF-8
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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130622131725) do

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.string   "image_url"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "contacts", :force => true do |t|
    t.string   "name"
    t.string   "surname"
    t.string   "email"
    t.text     "message"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "designers", :force => true do |t|
    t.string   "name"
    t.text     "description", :limit => 255
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
    t.string   "image_url"
  end

  create_table "events", :force => true do |t|
    t.string   "name"
    t.text     "description", :limit => 255
    t.datetime "date"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
    t.string   "image_url"
    t.string   "location"
    t.text     "extra_notes"
  end

  create_table "events_partners", :force => true do |t|
    t.integer "event_id"
    t.integer "partner_id"
  end

  create_table "images", :force => true do |t|
    t.integer  "product_id"
    t.string   "image_url"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "partners", :force => true do |t|
    t.string   "name"
    t.text     "description",   :limit => 255
    t.string   "external_link"
    t.string   "image_url"
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
  end

  create_table "products", :force => true do |t|
    t.string   "name"
    t.text     "description",    :limit => 255
    t.string   "image_url"
    t.text     "specifications", :limit => 255
    t.integer  "designer_id"
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
    t.integer  "category_id",    :limit => 255
    t.integer  "partner_id"
  end

  create_table "products_resellers", :force => true do |t|
    t.integer "reseller_id"
    t.integer "product_id"
  end

  create_table "products_services", :force => true do |t|
    t.integer "product_id"
    t.integer "service_id"
  end

  create_table "resellers", :force => true do |t|
    t.string   "name"
    t.string   "region"
    t.string   "province"
    t.string   "address"
    t.string   "email"
    t.string   "telephone"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "image_url"
  end

  create_table "services", :force => true do |t|
    t.string   "name"
    t.text     "description",  :limit => 255
    t.text     "procedure",    :limit => 255
    t.string   "image_url"
    t.integer  "service_type"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
  end

end
