class CreateEpoques < ActiveRecord::Migration[8.0]
  def change
    create_table :epoques do |t|
      t.string :nom

      t.timestamps
    end
  end
end
