class CreateExempleMusicals < ActiveRecord::Migration[8.0]
  def change
    create_table :exemple_musicals do |t|
      t.references :oeuvre, null: false, foreign_key: true
      t.references :coup_archet, null: false, foreign_key: true
      t.string :mesure
      t.string :description

      t.timestamps
    end
  end
end
