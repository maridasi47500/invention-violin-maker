class Epoque < ApplicationRecord
  has_many :coup_archets
  validates :nom, presence: true, uniqueness: true
  has_many :coup_archet_epoques
end
