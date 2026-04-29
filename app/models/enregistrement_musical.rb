class EnregistrementMusical < ApplicationRecord
  belongs_to :oeuvre
  belongs_to :violoniste
def myname
oeuvre.nom+" "+violoniste.nom
end
end
