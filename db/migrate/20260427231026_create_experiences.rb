class CreateExperiences < ActiveRecord::Migration[8.0]
  def change
    create_table :experiences do |t|
      t.references :journal_labo, null: false, foreign_key: true
      t.references :corde, null: false, foreign_key: true
      t.string :point_archet
      t.string :longueur
      t.string :pression
      t.integer :ressenti
      t.text :note

      t.timestamps
    end
  end
end
