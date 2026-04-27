class Oeuvre < ApplicationRecord
  belongs_to :compositeur
  belongs_to :style_musical
end
