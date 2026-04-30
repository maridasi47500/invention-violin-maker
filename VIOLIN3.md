class CreateBodyMechanics < ActiveRecord::Migration[6.0]
  def change
    create_table :body_mechanics do |t|
      t.references :journal_labo, foreign_key: true
      t.integer :elbow_angle_degrees, limit: 2
      t.string :elbow_state
      t.string :wrist_angle_state
      t.integer :wrist_extension_degrees
      t.string :index_phalange_state
      t.string :thumb_position
      t.string :shoulder_position
      t.integer :violin_angle_degrees, limit: 2
      t.string :back_posture
      t.string :chin_pressure
      t.boolean :bow_parallelism_check
      t.text :bowh_deviation_notes
      t.timestamps
    end

    create_table :bow_trajectories do |t|
      t.references :body_mechanic, foreign_key: true
      t.string :bow_stroke_type
      t.text :friction_trajectory
      t.text :empty_trajectory
      t.integer :air_time_percentage, limit: 2
      t.integer :resonance_quality, limit: 1
      t.text :tension_buildup
      t.timestamps
    end

    create_table :elbow_breathing do |t|
      t.references :body_mechanic, foreign_key: true
      t.boolean :breathing_present
      t.string :micro_release_frequency
      t.integer :rigidity_level, limit: 1
      t.integer :sound_quality_rigid, limit: 1
      t.integer :sound_quality_breathing, limit: 1
      t.timestamps
    end

    create_table :finger_vibrato_archet do |t|
      t.references :body_mechanic, foreign_key: true
      t.boolean :phalange_oscillation
      t.boolean :vibrato_natural
      t.float :oscillation_frequency_hz
      t.integer :nuance_quality, limit: 1
      t.integer :sound_flat_without_vibrato, limit: 1
      t.integer :sound_alive_with_vibrato, limit: 1
      t.timestamps
    end
  end
end

