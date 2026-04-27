class StringSpirit < ApplicationRecord
  belongs_to :corde
  belongs_to :epoque
  belongs_to :compositeur
  has_many :fire_points
def myname
"corde de " + corde.nom + ", époque "+ epoque.nom + ", compositeur : "+compositeur.nom
end
end
