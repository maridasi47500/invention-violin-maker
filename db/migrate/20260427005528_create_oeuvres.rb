class CreateOeuvres < ActiveRecord::Migration[8.0]
  def change
    create_table :oeuvres do |t|
      t.string :titre
      t.references :compositeur, null: false, foreign_key: true
      t.integer :annee
      t.references :style_musical, null: false, foreign_key: true

      t.timestamps
    end
  end
end
