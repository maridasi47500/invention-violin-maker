class Media < ApplicationRecord
  belongs_to :exemple_musical
  has_one :coup_archet, through: :exemple_musical
  #enum type_media: %(video partition audio)
end
