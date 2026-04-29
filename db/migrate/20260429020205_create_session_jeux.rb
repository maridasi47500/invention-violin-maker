class CreateSessionJeux < ActiveRecord::Migration[8.0]
  def change
    create_table :session_jeux do |t|
      t.references :instrument, null: false, foreign_key: true
      t.date :date_session
      t.time :heure_debut
      t.string :duree_minutes
      t.text :pieces_jouees
      t.text :notes_session
      t.integer :ressenti_epoque
      t.references :epoque, null: false, foreign_key: true
      t.text :reflexion_personnelle

      t.timestamps
    end
  end
end
