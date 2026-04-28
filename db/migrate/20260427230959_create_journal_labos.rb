class CreateJournalLabos < ActiveRecord::Migration[8.0]
  def change
    create_table :journal_labos do |t|
      t.date :date
      t.references :oeuvre, null: false, foreign_key: true
      t.string :mesure

      t.timestamps
    end
  end
end
