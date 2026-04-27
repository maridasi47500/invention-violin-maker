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

ActiveRecord::Schema[8.0].define(version: 2026_04_27_011732) do
  create_table "caracteres", force: :cascade do |t|
    t.string "nom"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "compositeurs", force: :cascade do |t|
    t.string "nom"
    t.integer "epoque_id", null: false
    t.string "nationalite"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["epoque_id"], name: "index_compositeurs_on_epoque_id"
  end

  create_table "coup_archet_tags", force: :cascade do |t|
    t.integer "coup_archet_id", null: false
    t.integer "tag_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["coup_archet_id"], name: "index_coup_archet_tags_on_coup_archet_id"
    t.index ["tag_id"], name: "index_coup_archet_tags_on_tag_id"
  end

  create_table "coup_archets", force: :cascade do |t|
    t.string "nom"
    t.string "technique"
    t.string "rythme_exact"
    t.string "vitesse_musicale"
    t.string "longueur_archet"
    t.string "pression"
    t.string "vitesse_archet"
    t.string "point_contact"
    t.string "angle_archet"
    t.string "type_attaque"
    t.string "dynamique_typique"
    t.text "description"
    t.integer "epoque_id", null: false
    t.integer "puce_category_id", null: false
    t.integer "style_musical_id", null: false
    t.integer "caractere_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["caractere_id"], name: "index_coup_archets_on_caractere_id"
    t.index ["epoque_id"], name: "index_coup_archets_on_epoque_id"
    t.index ["puce_category_id"], name: "index_coup_archets_on_puce_category_id"
    t.index ["style_musical_id"], name: "index_coup_archets_on_style_musical_id"
  end

  create_table "coup_archets_tags", force: :cascade do |t|
    t.integer "coup_archet_id", null: false
    t.integer "tag_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["coup_archet_id"], name: "index_coup_archets_tags_on_coup_archet_id"
    t.index ["tag_id"], name: "index_coup_archets_tags_on_tag_id"
  end

  create_table "epoques", force: :cascade do |t|
    t.string "nom"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "exemple_musicals", force: :cascade do |t|
    t.integer "oeuvre_id", null: false
    t.integer "coup_archet_id", null: false
    t.string "mesure"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["coup_archet_id"], name: "index_exemple_musicals_on_coup_archet_id"
    t.index ["oeuvre_id"], name: "index_exemple_musicals_on_oeuvre_id"
  end

  create_table "instruments", force: :cascade do |t|
    t.string "brand"
    t.string "model"
    t.integer "year"
    t.string "serial_number"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "media", force: :cascade do |t|
    t.string "url"
    t.string "type_media"
    t.integer "exemple_musical_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["exemple_musical_id"], name: "index_media_on_exemple_musical_id"
  end

  create_table "oeuvres", force: :cascade do |t|
    t.string "titre"
    t.integer "compositeur_id", null: false
    t.integer "annee"
    t.integer "style_musical_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["compositeur_id"], name: "index_oeuvres_on_compositeur_id"
    t.index ["style_musical_id"], name: "index_oeuvres_on_style_musical_id"
  end

  create_table "puce_categories", force: :cascade do |t|
    t.string "nom"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "restorations", force: :cascade do |t|
    t.integer "instrument_id", null: false
    t.text "description"
    t.date "work_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["instrument_id"], name: "index_restorations_on_instrument_id"
  end

  create_table "style_musicals", force: :cascade do |t|
    t.string "nom"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tags", force: :cascade do |t|
    t.string "nom"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "compositeurs", "epoques"
  add_foreign_key "coup_archet_tags", "coup_archets"
  add_foreign_key "coup_archet_tags", "tags"
  add_foreign_key "coup_archets", "caracteres"
  add_foreign_key "coup_archets", "epoques"
  add_foreign_key "coup_archets", "puce_categories"
  add_foreign_key "coup_archets", "style_musicals"
  add_foreign_key "coup_archets_tags", "coup_archets"
  add_foreign_key "coup_archets_tags", "tags"
  add_foreign_key "exemple_musicals", "coup_archets"
  add_foreign_key "exemple_musicals", "oeuvres"
  add_foreign_key "media", "exemple_musicals"
  add_foreign_key "oeuvres", "compositeurs"
  add_foreign_key "oeuvres", "style_musicals"
  add_foreign_key "restorations", "instruments"
end
