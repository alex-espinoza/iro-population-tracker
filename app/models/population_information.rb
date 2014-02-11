class PopulationInformation < ActiveRecord::Base
  validates_presence_of :server
  validates_presence_of :online
  validates_presence_of :shops
end
