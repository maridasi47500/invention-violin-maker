class CreateCoupArchetEpoques < ActiveRecord::Migration[8.0]
  def change
    create_table :coup_archet_epoques do |t|
      t.references :coup_archet, null: false, foreign_key: true
      t.references :epoque, null: false, foreign_key: true
      t.text :description_epoque
      t.text :caracteristiques_typiques
      t.text :evolution_depuis_precedent
      t.text :raison_mutation
      t.text :exemples_references
      t.string :ordre_chronologique_id
      t.boolean :is_primary

      t.timestamps
    end
  end
end
