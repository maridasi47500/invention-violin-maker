class CreateEpochHypotheses < ActiveRecord::Migration[8.0]
  def change
    create_table :epoch_hypotheses do |t|
      t.references :experience, null: false, foreign_key: true
      t.string :epoch_detected
      t.string :bow_stroke_hypothesis
      t.integer :confidence_percent
      t.text :reason

      t.timestamps
    end
  end
end
