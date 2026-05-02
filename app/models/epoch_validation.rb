# Nouvelle table : EpochValidation
# rails g model EpochValidation epoch_hypothesis:references 
#   actual_bow_stroke:string matches_hypothesis:boolean discrepancy:text

class EpochValidation < ApplicationRecord
  belongs_to :epoch_hypothesis
  
  def validate!
    # Tu joues l'hypothèse
    # "J'ai prédit : Baroque = Spiccato léger"
    # Tu joues : Spiccato léger
    # Ressenti : 9/10 frissons
    
    if ressenti >= 8 && matches_hypothesis
      mark_as_valid!
    elsif ressenti >= 8 && !matches_hypothesis
      # RÉVÉLATION : C'était une autre époque !
      update_epoch_prediction!
    else
      mark_as_false_positive!
    end
  end
  
  def update_epoch_prediction!
    # Tu as découvert que c'est pas Baroque
    # Mais Classique ou Romantique
    # Crée un nouveau lien : "L'indice X que je pensais Baroque = FAUX"
    
    DiscoveredMisreading.create!(
      from_clue: epoch_hypothesis.reason,
      actual_epoch: "à découvrir",
      lesson: "Les doubles croches rapides ≠ Baroque toujours"
    )
  end
end
