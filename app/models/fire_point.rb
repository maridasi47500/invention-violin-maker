class FirePoint < ApplicationRecord
  belongs_to :string_spirit
  belongs_to :coup_archet
  belongs_to :oeuvre
  has_many :questions
  has_many :explorations
  # Ex: "Le spirit Sol/Brahms/Romantique + Détaché lourd + Symphonie 4"
end
