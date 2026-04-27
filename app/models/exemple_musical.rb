class ExempleMusical < ApplicationRecord
  belongs_to :oeuvre
  belongs_to :coup_archet
  has_many :media
end
