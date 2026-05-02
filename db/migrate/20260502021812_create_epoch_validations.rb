class CreateEpochValidations < ActiveRecord::Migration[8.0]
  def change
    create_table :epoch_validations do |t|
      t.references :epoch_hypothesis, null: false, foreign_key: true
      t.string :actual_bow_stroke
      t.boolean :matches_hypothesis
      t.text :discrepancy

      t.timestamps
    end
  end
end
