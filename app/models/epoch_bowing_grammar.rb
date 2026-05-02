class EpochBowingGrammar < ApplicationRecord
# Nouvelle table : EpochBowingGrammar
# rails g model EpochBowingGrammar epoch:string bow_stroke:string context:text likelihood:integer

EPOCH_BOWING_RULES = {
  baroque: {
    Mi_à_vide_rapide: "Spiccato ou détaché léger",
    absence_archet_indiqué: "Laisse ton archet choisir",
    ornemental_pattern: "Rebond naturel > archet appuyé"
  },
  classique: {
    Mi_à_vide_rapide: "Détaché égal medium",
    rythme_regulier: "Poids de bras constant",
    articulation: "Plus lié que Baroque"
  },
  romantique: {
    Mi_à_vide_rapide: "Portato ou Grand détaché",
    lourdeur: "Pression d'archet + > Baroque",
    expression: "Rallenti dans le poids"
  }
}
end
