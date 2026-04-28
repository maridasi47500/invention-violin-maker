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

ActiveRecord::Schema[8.0].define(version: 2026_04_28_015035) do
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

  create_table "cordes", force: :cascade do |t|
    t.string "nom"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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

  create_table "experiences", force: :cascade do |t|
    t.integer "journal_labo_id", null: false
    t.integer "corde_id", null: false
    t.string "point_archet"
    t.string "longueur"
    t.string "pression"
    t.integer "ressenti"
    t.text "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["corde_id"], name: "index_experiences_on_corde_id"
    t.index ["journal_labo_id"], name: "index_experiences_on_journal_labo_id"
  end

  create_table "explorations", force: :cascade do |t|
    t.string "violinist_name"
    t.integer "fire_point_id", null: false
    t.text "notes"
    t.text "lilypond_reponse"
    t.string "audio_reponse_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["fire_point_id"], name: "index_explorations_on_fire_point_id"
  end

  create_table "fire_evidences", force: :cascade do |t|
    t.integer "fire_point_id", null: false
    t.string "evidence_type"
    t.text "source"
    t.text "content"
    t.string "source_url"
    t.integer "confidence"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["fire_point_id"], name: "index_fire_evidences_on_fire_point_id"
  end

  create_table "fire_points", force: :cascade do |t|
    t.integer "string_spirit_id", null: false
    t.integer "coup_archet_id", null: false
    t.integer "oeuvre_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["coup_archet_id"], name: "index_fire_points_on_coup_archet_id"
    t.index ["oeuvre_id"], name: "index_fire_points_on_oeuvre_id"
    t.index ["string_spirit_id"], name: "index_fire_points_on_string_spirit_id"
  end

  create_table "fire_soul_narratives", force: :cascade do |t|
    t.integer "fire_point_id", null: false
    t.text "aesthetic_principle"
    t.string "epoch_fingerprint"
    t.text "compositeur_intention"
    t.text "violinist_wisdom"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["fire_point_id"], name: "index_fire_soul_narratives_on_fire_point_id"
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

  create_table "journal_labos", force: :cascade do |t|
    t.date "date"
    t.integer "oeuvre_id", null: false
    t.string "mesure"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["oeuvre_id"], name: "index_journal_labos_on_oeuvre_id"
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

  create_table "questions", force: :cascade do |t|
    t.text "texte"
    t.integer "fire_point_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["fire_point_id"], name: "index_questions_on_fire_point_id"
  end

  create_table "restorations", force: :cascade do |t|
    t.integer "instrument_id", null: false
    t.text "description"
    t.date "work_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["instrument_id"], name: "index_restorations_on_instrument_id"
  end

  create_table "string_spirits", force: :cascade do |t|
    t.integer "corde_id", null: false
    t.integer "epoque_id", null: false
    t.integer "compositeur_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["compositeur_id"], name: "index_string_spirits_on_compositeur_id"
    t.index ["corde_id"], name: "index_string_spirits_on_corde_id"
    t.index ["epoque_id"], name: "index_string_spirits_on_epoque_id"
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

  create_table "tradition_deviations", force: :cascade do |t|
    t.integer "fire_point_id", null: false
    t.integer "compositeur_id", null: false
    t.text "tradition_says"
    t.text "violinist_does"
    t.string "reason"
    t.text "consequence"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["compositeur_id"], name: "index_tradition_deviations_on_compositeur_id"
    t.index ["fire_point_id"], name: "index_tradition_deviations_on_fire_point_id"
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
  add_foreign_key "experiences", "cordes"
  add_foreign_key "experiences", "journal_labos"
  add_foreign_key "explorations", "fire_points"
  add_foreign_key "fire_evidences", "fire_points"
  add_foreign_key "fire_points", "coup_archets"
  add_foreign_key "fire_points", "oeuvres"
  add_foreign_key "fire_points", "string_spirits"
  add_foreign_key "fire_soul_narratives", "fire_points"
  add_foreign_key "journal_labos", "oeuvres"
  add_foreign_key "media", "exemple_musicals"
  add_foreign_key "oeuvres", "compositeurs"
  add_foreign_key "oeuvres", "style_musicals"
  add_foreign_key "questions", "fire_points"
  add_foreign_key "restorations", "instruments"
  add_foreign_key "string_spirits", "compositeurs"
  add_foreign_key "string_spirits", "cordes"
  add_foreign_key "string_spirits", "epoques"
  add_foreign_key "tradition_deviations", "compositeurs"
  add_foreign_key "tradition_deviations", "fire_points"
end
