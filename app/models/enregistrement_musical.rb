class EnregistrementMusical < ApplicationRecord
  belongs_to :oeuvre
  belongs_to :violoniste
def myname
oeuvre.titre+" "+violoniste.nom
end
def epoque_compositeur
Epoque.find(epoque_compositeur_id)
end
def epoque_enregistrement
Epoque.find(epoque_enregistrement_id)
end
def lutherie_archet
Lutherie.find(lutherie_archet_id)
end
def lutherie_violon
Lutherie.find(lutherie_violon_id)
end
end
