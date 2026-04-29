class CreateViolonistes < ActiveRecord::Migration[8.0]
  def change
    create_table :violonistes do |t|
      t.string :nom

      t.timestamps
    end
  end
end
