class CreateCordes < ActiveRecord::Migration[8.0]
  def change
    create_table :cordes do |t|
      t.string :nom

      t.timestamps
    end
  end
end
