class CreateEnregistrementMusicaux < ActiveRecord::Migration[8.0]
  def change
    create_table :enregistrement_musicaux do |t|
      t.references :oeuvre, null: false, foreign_key: true
      t.references :violoniste, null: false, foreign_key: true
      t.date :date_enregistrement
      t.string :format_media
      t.string :label_editeur
      t.string :url_streaming
      t.integer :lutherie_violon_id
      t.integer :lutherie_archet_id
      t.text :notes_lutherie
      t.string :source_achat
      t.date :date_achat_ou_decouverte
      t.integer :epoque_compositeur_id
      t.integer :epoque_enregistrement_id

      t.timestamps
    end
  end
end
