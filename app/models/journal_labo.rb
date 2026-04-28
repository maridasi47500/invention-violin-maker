class JournalLabo < ApplicationRecord
  belongs_to :oeuvre
  has_many :experiences
  def fire_points_detectes
    experiences.where("ressenti >= 8") # Seuil de feu
  end
  def myname
    "mesure "+mesure+" - "+oeuvre.titre + " "+oeuvre.compositeur.nom+ " "
  end

end
