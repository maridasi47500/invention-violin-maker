class Oeuvre < ApplicationRecord
  belongs_to :compositeur
  belongs_to :style_musical
def myname
titre + " "+compositeur.nom
end
end
