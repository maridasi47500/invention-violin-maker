class DiscoveredMisreading < ApplicationRecord
  belongs_to :epoch_hypothesis
  belongs_to :epoch
end
