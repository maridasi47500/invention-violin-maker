class CreateTraditionDeviations < ActiveRecord::Migration[8.0]
  def change
    create_table :tradition_deviations do |t|
      t.references :fire_point, null: false, foreign_key: true
      t.references :compositeur, null: false, foreign_key: true
      t.text :tradition_says
      t.text :violinist_does
      t.string :reason
      t.text :consequence

      t.timestamps
    end
  end
end
