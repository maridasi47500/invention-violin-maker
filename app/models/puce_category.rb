class PuceCategory < ApplicationRecord
  has_many :coup_archets
  validates :nom, presence: true, uniqueness: true
end
