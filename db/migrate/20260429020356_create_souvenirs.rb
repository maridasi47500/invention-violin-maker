class CreateSouvenirs < ActiveRecord::Migration[8.0]
  def change
    create_table :souvenirs do |t|
      t.references :instrument, null: false, foreign_key: true
      t.references :enregistrement_musical, null: false, foreign_key: true
      t.references :session_jeu, null: false, foreign_key: true
      t.date :date_ecoute
      t.text :contexte
      t.text :reflexion
      t.integer :resonnace_emotionnelle
      t.boolean :piece_deja_jouee

      t.timestamps
    end
  end
end
