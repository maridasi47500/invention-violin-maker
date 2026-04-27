class CreateCompositeurs < ActiveRecord::Migration[8.0]
  def change
    create_table :compositeurs do |t|
      t.string :nom
      t.references :epoque, null: false, foreign_key: true
      t.string :nationalite

      t.timestamps
    end
  end
end
