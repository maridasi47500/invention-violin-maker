class CreateFireSoulNarratives < ActiveRecord::Migration[8.0]
  def change
    create_table :fire_soul_narratives do |t|
      t.references :fire_point, null: false, foreign_key: true
      t.text :aesthetic_principle
      t.string :epoch_fingerprint
      t.text :compositeur_intention
      t.text :violinist_wisdom

      t.timestamps
    end
  end
end
