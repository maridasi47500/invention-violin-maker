class CreateStringSpirits < ActiveRecord::Migration[8.0]
  def change
    create_table :string_spirits do |t|
      t.references :corde, null: false, foreign_key: true
      t.references :epoque, null: false, foreign_key: true
      t.references :compositeur, null: false, foreign_key: true

      t.timestamps
    end
  end
end
