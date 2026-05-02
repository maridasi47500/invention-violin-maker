class CreateBowTrajectories < ActiveRecord::Migration[8.0]
  def change
    create_table :bow_trajectories do |t|
      t.string :bow_stroke_type
      t.string :friction_trajectory
      t.string :empty_trajectory
      t.integer :air_time_percentage
      t.integer :resonance_quality
      t.text :tension_buildup

      t.timestamps
    end
  end
end
