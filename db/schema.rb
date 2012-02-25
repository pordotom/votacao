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

ActiveRecord::Schema.define(:version => 20120225153736) do

  create_table "accounts", :force => true do |t|
    t.string   "name"
    t.string   "cpf"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "votation_id"
    t.boolean  "voted"
  end

  create_table "option_values", :force => true do |t|
    t.integer  "option_id"
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "option_values", ["option_id"], :name => "index_option_values_on_option_id"

  create_table "options", :force => true do |t|
    t.string   "nome"
    t.integer  "votation_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "quantity"
  end

  add_index "options", ["votation_id"], :name => "index_options_on_votation_id"

  create_table "votations", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "votes", :force => true do |t|
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.integer  "option_value_id"
  end

end
