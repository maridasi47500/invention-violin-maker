class CreateMedia < ActiveRecord::Migration[8.0]
  def change
    create_table :media do |t|
      t.string :url
      t.string :type_media
      t.references :exemple_musical, null: false, foreign_key: true

      t.timestamps
    end
  end
end
