class Oeuvre < ApplicationRecord
  belongs_to :compositeur
  belongs_to :style_musical
def myname
titre + " "+compositeur.nom
end
  has_many :epoch_clues
  has_many :experiences
  
  def epoch_likelihood
    clues = epoch_clues
    scores = { baroque: 0, classique: 0, romantique: 0 }
    clues.each { |c| scores[c.epoch.to_sym] += c.weight }
    scores.max_by { |_, v| v }
  end
end
