class CreateFireEvidences < ActiveRecord::Migration[8.0]
  def change
    create_table :fire_evidences do |t|
      t.references :fire_point, null: false, foreign_key: true
      t.string :evidence_type
      t.text :source
      t.text :content
      t.string :source_url
      t.integer :confidence

      t.timestamps
    end
  end
end
