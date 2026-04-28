class CoupArchetEpoque < ApplicationRecord
  belongs_to :coup_archet
  belongs_to :epoque
  validates :coup_archet_id, uniqueness: { scope: :epoque_id }
  scope :chronologique, -> { order(:epoque_id) }
end
