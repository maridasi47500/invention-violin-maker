class CreatePuceCategories < ActiveRecord::Migration[8.0]
  def change
    create_table :puce_categories do |t|
      t.string :nom
      t.text :description

      t.timestamps
    end
  end
end
