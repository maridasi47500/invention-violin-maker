class CreateDiscoveredMisreadings < ActiveRecord::Migration[8.0]
  def change
    create_table :discovered_misreadings do |t|
      t.references :epoch_hypothesis, null: false, foreign_key: true
      t.string :from_clue
      t.references :epoch, null: false, foreign_key: true
      t.string :lesson

      t.timestamps
    end
  end
end
