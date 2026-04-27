class CreateCoupArchets < ActiveRecord::Migration[8.0]
  def change
    create_table :coup_archets do |t|
      t.string :nom
      t.string :technique
      t.string :rythme_exact
      t.string :vitesse_musicale
      t.string :longueur_archet
      t.string :pression
      t.string :vitesse_archet
      t.string :point_contact
      t.string :angle_archet
      t.string :type_attaque
      t.string :dynamique_typique
      t.text :description
      t.references :epoque, null: false, foreign_key: true
      t.references :puce_category, null: false, foreign_key: true
      t.references :style_musical, null: false, foreign_key: true
      t.references :caractere, null: false, foreign_key: true

      t.timestamps
    end
  end
end
