class CreateEpochBowingGrammars < ActiveRecord::Migration[8.0]
  def change
    create_table :epoch_bowing_grammars do |t|
      t.string :epoch
      t.string :bow_stroke
      t.text :context
      t.integer :likelihood

      t.timestamps
    end
  end
end
