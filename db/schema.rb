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

ActiveRecord::Schema.define(:version => 20140807094148) do

  create_table "articles", :force => true do |t|
    t.string   "title"
    t.string   "author"
    t.text     "body"
    t.datetime "published_at"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.integer  "customer_id"
  end

  create_table "customers", :force => true do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "email"
    t.string   "password_digest"
    t.string   "country"
    t.string   "contact"
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
    t.string   "remember_token"
    t.boolean  "admin",                  :default => false
    t.string   "password_reset_token"
    t.datetime "password_reset_sent_at"
  end

  create_table "markings", :force => true do |t|
    t.integer  "complete_id"
    t.integer  "revision_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "status"
  end

  add_index "markings", ["complete_id", "revision_id"], :name => "index_markings_on_complete_id_and_revision_id", :unique => true
  add_index "markings", ["complete_id"], :name => "index_markings_on_complete_id"
  add_index "markings", ["revision_id"], :name => "index_markings_on_revision_id"

  create_table "messages", :force => true do |t|
    t.string   "body"
    t.string   "subject"
    t.integer  "order_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "recipient"
    t.string   "sender"
  end

  create_table "orders", :force => true do |t|
    t.string   "topic"
    t.string   "subject"
    t.string   "documenttype"
    t.integer  "pages"
    t.string   "urgency"
    t.integer  "references"
    t.string   "citation"
    t.string   "level"
    t.string   "language"
    t.string   "instructions"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.integer  "customer_id"
    t.decimal  "price"
    t.datetime "purchased_at"
    t.string   "spacing"
    t.integer  "deadline"
  end

  create_table "orderstatuses", :force => true do |t|
    t.string   "complete"
    t.string   "revision"
    t.integer  "order_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "orderuploads", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "payment_notifications", :force => true do |t|
    t.text     "params"
    t.string   "status"
    t.string   "transaction_id"
    t.integer  "order_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "relationships", :force => true do |t|
    t.integer  "read_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "relationships", ["read_id"], :name => "index_relationships_on_read_id", :unique => true

  create_table "states", :force => true do |t|
    t.string   "complete"
    t.string   "revision"
    t.integer  "order_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "uploadfiles", :force => true do |t|
    t.string   "name"
    t.string   "attachment"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "order_id"
  end

  create_table "uploads", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "hashed_password"
    t.string   "salt"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

end
