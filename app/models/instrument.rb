class Instrument < ApplicationRecord
def myname
brand.to_s + " "+model.to_s+" "+year.to_s
end
end
