class CoupArchet < ApplicationRecord
  belongs_to :epoque
  belongs_to :puce_category
  belongs_to :style_musical
  belongs_to :caractere
  
  validates :nom, presence: true, uniqueness: true
  has_many :exemple_musicals
  has_many :oeuvres, through: :exemple_musicals
  has_and_belongs_to_many :tags
  
  scope :par_vitesse, ->(v) { where("vitesse_musicale LIKE ?", "%#{v}%") }
  scope :par_longueur, ->(l) { where(longueur_archet: l) }
  scope :par_pression, ->(p) { where(pression: p) }
end
