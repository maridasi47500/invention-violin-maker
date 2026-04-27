class Question < ApplicationRecord
  belongs_to :fire_point
  # Ex: "Le feu de Brahms est-il dans le poids de l’archet sur Sol ou dans le vibrato large ?"
end
