class EpochHypothesis < ApplicationRecord
  belongs_to :experience
  
  def self.generate_for(experience)
    # 1. Collecte les indices époque de la partition
    clues = experience.journal_labo.oeuvre.epoch_clues
    
    # 2. Calcule le score d'époque
    epoch_score = calculate_epoch_score(clues)
    
    # 3. Map vers la grammaire d'archet
    predicted_bow = map_epoch_to_bowing(epoch_score)
    
    # 4. Crée l'hypothèse
    EpochHypothesis.create!(
      experience: experience,
      epoch_detected: epoch_score.winner,  # "baroque"
      bow_stroke_hypothesis: predicted_bow,
      confidence_percent: epoch_score.confidence,
      reason: "#{clues.count} indices trouvés : #{clues.map(&:value).join(', ')}"
    )
  end
  
  private
  
  def self.calculate_epoch_score(clues)
    scores = { baroque: 0, classique: 0, romantique: 0 }
    clues.each { |clue| scores[clue.epoch.to_sym] += clue.weight }
    winner = scores.max_by { |_, v| v }[0]
    confidence = (scores[winner] / scores.values.sum.to_f * 100).round
    
    { winner: winner, confidence: confidence, scores: scores }
  end
  
  def self.map_epoch_to_bowing(epoch_score)
    EPOCH_BOWING_RULES[epoch_score[:winner]] || {}
  end
  has_one :epoch_validation, dependent: :destroy
  
  def self.generate_for(experience)
    oeuvre = experience.journal_labo.oeuvre
    epoch_score = oeuvre.epoch_likelihood
    
    create!(
      experience: experience,
      epoch_detected: epoch_score[0],
      bow_stroke_hypothesis: BOWING_RULES[epoch_score[0]],
      confidence_percent: 0, # À calculer
      reason: "À partir des clues de #{oeuvre.title}"
    )
  end
end
