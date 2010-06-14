# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100614060041) do

  create_table "categories", :force => true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories_strips", :id => false, :force => true do |t|
    t.integer "category_id"
    t.integer "strip_id"
  end

  create_table "comments", :force => true do |t|
    t.integer  "strip_id"
    t.string   "author"
    t.string   "email"
    t.string   "website"
    t.text     "body"
    t.string   "status",     :default => "unverified"
    t.boolean  "approved",   :default => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "responses", :force => true do |t|
    t.string    "name"
    t.string    "email"
    t.string    "phone"
    t.string    "subject"
    t.text      "comment"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "strips", :force => true do |t|
    t.string    "title"
    t.string    "url"
    t.text      "story"
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.text      "note"
  end

end
