class CreateRestorations < ActiveRecord::Migration[8.0]
  def change
    create_table :restorations do |t|
      t.references :instrument, null: false, foreign_key: true
      t.text :description
      t.date :work_date

      t.timestamps
    end
  end
end
