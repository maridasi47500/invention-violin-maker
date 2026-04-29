class SessionJeu < ApplicationRecord
  belongs_to :instrument
  belongs_to :epoque
def myname
date_session.to_s+ " "+instrument.myname 
end
end
