class CreateCoupArchetTags < ActiveRecord::Migration[8.0]
  def change
    create_table :coup_archet_tags do |t|
      t.references :coup_archet, null: false, foreign_key: true
      t.references :tag, null: false, foreign_key: true

      t.timestamps
    end
  end
end
