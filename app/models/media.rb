class Media < ApplicationRecord
  belongs_to :exemple_musical
  #enum type_media: %(video partition audio)
end
