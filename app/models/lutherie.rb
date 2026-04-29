class Lutherie < ApplicationRecord
  belongs_to :epoque
def myname
nom + " "+ville+" "region
end
end
