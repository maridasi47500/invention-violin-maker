class Experience < ApplicationRecord
  belongs_to :journal_labo
  belongs_to :corde
  has_one :epoch_hypothesis, dependent: :destroy
  has_one :epoch_validation, through: :epoch_hypothesis
  
  after_create :generate_epoch_hypothesis
  
  def generate_epoch_hypothesis
    EpochHypothesis.generate_for(self)
  end
  
  # Pendant que tu joues, Flesch t'a dit "Baroque = Spiccato léger"
  # À la fin de ta session : reconnais-tu vraiment que c'EST Baroque ?
  def recognize_epoch?
    epoch_hypothesis.matches_hypothesis? && ressenti >= 8
  end
end
