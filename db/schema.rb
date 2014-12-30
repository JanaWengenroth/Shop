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

ActiveRecord::Schema.define(version: 20141228123855) do

  create_table "auftrags", force: true do |t|
    t.date     "datum"
    t.integer  "stueckzahl"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "produkt_id"
    t.integer  "kunden_id"
  end

  create_table "auftrags_produkts", id: false, force: true do |t|
    t.integer "auftrags_id"
    t.integer "produkts_id"
  end

  create_table "kundes", force: true do |t|
    t.string   "vorname"
    t.string   "nachname"
    t.string   "email"
    t.string   "strasse"
    t.integer  "hausnummer"
    t.integer  "plz"
    t.integer  "tel"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "rolle"
  end

  create_table "produkts", force: true do |t|
    t.string   "name"
    t.string   "kategorie"
    t.string   "beschreibung"
    t.integer  "preis"
    t.date     "gueltigVon"
    t.date     "gueltigBis"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "bild_file_name"
    t.string   "bild_content_type"
    t.integer  "bild_file_size"
    t.datetime "bild_updated_at"
  end

  create_table "unterprodukts", force: true do |t|
    t.integer  "menge"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "oberprodukt_id"
    t.integer  "unterprodukt_id"
  end

end
