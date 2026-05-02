# Nouvelle table : EpochClue
# rails g model EpochClue fire_point:references clue_type:string value:string epoch:string weight:integer

class EpochClue < ApplicationRecord
  belongs_to :fire_point

  
  CLUE_TYPES = {
    notation_absence: "Pas d'indication d'archet écrite",
    rhythmic_pattern: "Pattern rythmique (doubles croches répétées)",
    register_height: "Registre (aigu = Baroque spiccato)",
    technical_difficulty: "Difficulté = époque de virtuosité",
    articulation_title: "Titre 'Preludio' = Baroque",
    key_signature: "Do Maj = Bach, vs Ré Maj = Mozart",
    manuscript_source: "Édition Urtext vs Szeryng vs Oistrakh"
  }
    validates :clue_type, inclusion: { in: CLUE_TYPES.keys }
end
