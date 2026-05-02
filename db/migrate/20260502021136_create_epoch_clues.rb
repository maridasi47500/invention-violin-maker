class CreateEpochClues < ActiveRecord::Migration[8.0]
  def change
    create_table :epoch_clues do |t|
      t.references :fire_point, null: false, foreign_key: true
      t.string :clue_type
      t.string :value
      t.string :epoch
      t.integer :weight

      t.timestamps
    end
  end
end
