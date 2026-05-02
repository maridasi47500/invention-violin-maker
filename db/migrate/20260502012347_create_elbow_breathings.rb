class CreateElbowBreathings < ActiveRecord::Migration[8.0]
  def change
    create_table :elbow_breathings do |t|
      t.references :body_mechanic, null: false, foreign_key: true
      t.string :micro_release_frequency
      t.string :breathing_present
      t.integer :rigidity_level
      t.integer :sound_quality_rigid
      t.integer :sound_quality_breathing

      t.timestamps
    end
  end
end
