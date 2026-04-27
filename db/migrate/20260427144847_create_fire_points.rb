class CreateFirePoints < ActiveRecord::Migration[8.0]
  def change
    create_table :fire_points do |t|
      t.references :string_spirit, null: false, foreign_key: true
      t.references :coup_archet, null: false, foreign_key: true
      t.references :oeuvre, null: false, foreign_key: true

      t.timestamps
    end
  end
end
