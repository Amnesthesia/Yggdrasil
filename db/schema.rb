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

ActiveRecord::Schema.define(:version => 20130409164202) do

  create_table "activities", :force => true do |t|
    t.integer  "user_id"
    t.integer  "category_id"
    t.integer  "post_id"
    t.string   "action"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "activities", ["category_id"], :name => "index_activities_on_category_id"
  add_index "activities", ["post_id"], :name => "index_activities_on_post_id"
  add_index "activities", ["user_id"], :name => "index_activities_on_user_id"

  create_table "categories", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "img_path"
    t.integer  "points"
    t.integer  "category_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "categories", ["category_id"], :name => "index_categories_on_category_id"

  create_table "posts", :force => true do |t|
    t.integer  "user_id"
    t.integer  "category_id"
    t.string   "title"
    t.text     "content"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "posts", ["category_id"], :name => "index_posts_on_category_id"
  add_index "posts", ["user_id"], :name => "index_posts_on_user_id"

  create_table "roles", :force => true do |t|
    t.string   "title"
    t.string   "description"
    t.integer  "permission_level"
    t.string   "img_path"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "password_digest"
    t.string   "email"
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "gender"
    t.string   "city"
    t.string   "zipcode"
    t.string   "country"
    t.string   "gravatar_url"
    t.integer  "role_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "users", ["role_id"], :name => "index_users_on_role_id"

end
