class Souvenir < ApplicationRecord
  belongs_to :instrument
  belongs_to :enregistrement_musical
  belongs_to :session_jeu
end
