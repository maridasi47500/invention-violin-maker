class CreateStyleMusicals < ActiveRecord::Migration[8.0]
  def change
    create_table :style_musicals do |t|
      t.string :nom

      t.timestamps
    end
  end
end
