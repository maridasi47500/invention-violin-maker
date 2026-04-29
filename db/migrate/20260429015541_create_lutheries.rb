class CreateLutheries < ActiveRecord::Migration[8.0]
  def change
    create_table :lutheries do |t|
      t.string :nom
      t.string :ville
      t.string :region
      t.string :pays
      t.string :type_lutherie
      t.text :description_typique
      t.text :materiel_caracteristique
      t.integer :periode_fondation_debut
      t.integer :periode_fondation_fin
      t.references :epoque, null: false, foreign_key: true
      t.boolean :disponible_achat_neuf
      t.boolean :disponible_occasion
      t.integer :prix_approximatif_eur
      t.integer :plateforme_achat
      t.boolean :produit_touristique
      t.text :heritage_culturel

      t.timestamps
    end
  end
end
