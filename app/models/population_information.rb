class PopulationInformation < ActiveRecord::Base
  validates_presence_of :server
  validates_presence_of :online
  validates_presence_of :shops

  def self.most_recent_classic_records(number=3)
    where(:server => "classic").order("created_at desc").limit(number)
  end

  def self.most_recent_renewal_records(number=3)
    where(:server => "renewal").order("created_at desc").limit(number)
  end
end
