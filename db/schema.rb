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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20131019203551) do

  create_table "beer_profiles", force: true do |t|
    t.string   "appearance_head_size"
    t.string   "appearance_head_texture"
    t.string   "appearance_head_color"
    t.string   "appearance_head_retention"
    t.string   "appearance_lacing"
    t.string   "appearance_body_opacity"
    t.string   "appearance_body_carbonation"
    t.integer  "appearance_color"
    t.text     "appearance_notes"
    t.string   "aroma_malt"
    t.string   "aroma_hops"
    t.string   "aroma_esters"
    t.string   "aroma_phenols"
    t.string   "aroma_bitterness"
    t.string   "aroma_flavor_grain"
    t.string   "aroma_flavor_hops"
    t.string   "aroma_flavor_fruit"
    t.string   "aroma_flavor_herbs"
    t.string   "aroma_flavor_funk"
    t.string   "aroma_flavor_mineral"
    t.string   "aroma_flavor_other"
    t.text     "aroma_notes"
    t.string   "taste_malt"
    t.string   "taste_hops"
    t.string   "taste_esters"
    t.string   "taste_phenols"
    t.string   "taste_bitterness"
    t.string   "taste_flavor_grain"
    t.string   "taste_flavor_hops"
    t.string   "taste_flavor_fruit"
    t.string   "taste_flavor_herbs"
    t.string   "taste_flavor_funk"
    t.string   "taste_flavor_mineral"
    t.string   "taste_flavor_other"
    t.text     "taste_notes"
    t.string   "mouth_body"
    t.string   "mouth_carbonation"
    t.string   "mouth_alcohol"
    t.string   "mouth_richness"
    t.string   "mouth_astringency"
    t.string   "mouth_finish"
    t.text     "mouth_notes"
    t.integer  "flavor_esters"
    t.integer  "flavor_alcoholic"
    t.integer  "flavor_citrus"
    t.integer  "flavor_hoppy"
    t.integer  "flavor_floral"
    t.integer  "flavor_spicy"
    t.integer  "flavor_malty"
    t.integer  "flavor_toffee"
    t.integer  "flavor_burnt"
    t.integer  "flavor_sweet"
    t.integer  "flavor_sour"
    t.integer  "flavor_bitter"
    t.integer  "flavor_astringent"
    t.integer  "flavor_full_bodied"
    t.integer  "flavor_lingers"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.integer  "beer_id"
    t.string   "name"
    t.string   "style"
    t.string   "brewery"
    t.decimal  "abv",                         precision: 7, scale: 2
    t.string   "image_path"
  end

  create_table "beers", force: true do |t|
    t.string   "name"
    t.string   "style"
    t.string   "brewery"
    t.string   "abv"
    t.string   "image_path"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
