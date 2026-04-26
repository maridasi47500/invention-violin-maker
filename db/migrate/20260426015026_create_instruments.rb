class CreateInstruments < ActiveRecord::Migration[8.0]
  def change
    create_table :instruments do |t|
      t.string :brand
      t.string :model
      t.integer :year
      t.string :serial_number
      t.text :description

      t.timestamps
    end
  end
end
