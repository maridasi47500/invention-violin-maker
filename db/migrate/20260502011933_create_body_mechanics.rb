class CreateBodyMechanics < ActiveRecord::Migration[8.0]
  def change
    create_table :body_mechanics do |t|
      t.integer :elbow_angle_degrees
      t.string :elbow_state
      t.string :wrist_angle_state
      t.integer :wrist_extension_degrees
      t.string :index_phalange_state
      t.string :thumb_position
      t.string :shoulder_position
      t.integer :violin_angle_degrees
      t.string :back_posture
      t.string :chin_pressure
      t.boolean :bow_parallelism_check
      t.string :bow_deviation_notes

      t.timestamps
    end
  end
end
