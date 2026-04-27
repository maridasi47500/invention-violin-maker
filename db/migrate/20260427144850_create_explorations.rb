class CreateExplorations < ActiveRecord::Migration[8.0]
  def change
    create_table :explorations do |t|
      t.string :violinist_name
      t.references :fire_point, null: false, foreign_key: true
      t.text :notes
      t.text :lilypond_reponse
      t.string :audio_reponse_url

      t.timestamps
    end
  end
end
