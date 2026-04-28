class ExempleMusical < ApplicationRecord
  belongs_to :oeuvre
  belongs_to :coup_archet
  has_many :media
def myname
oeuvre.titre+ " "+coup_archet.nom+" "+description
end
end
