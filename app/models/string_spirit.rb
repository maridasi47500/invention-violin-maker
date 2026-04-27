class StringSpirit < ApplicationRecord
  belongs_to :corde
  belongs_to :epoque
  belongs_to :compositeur
  has_many :fire_points
end
