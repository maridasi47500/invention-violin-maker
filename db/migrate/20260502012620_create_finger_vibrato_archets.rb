class CreateFingerVibratoArchets < ActiveRecord::Migration[8.0]
  def change
    create_table :finger_vibrato_archets do |t|
      t.references :body_mechanic, null: false, foreign_key: true
      t.boolean :phalange_oscillation
      t.boolean :vibrato_natural
      t.float :oscillation_frequency_hz
      t.integer :nuance_quality
      t.integer :sound_flat_without_vibrato
      t.integer :sound_alive_with_vibrato

      t.timestamps
    end
  end
end
