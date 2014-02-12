class PopulationInformation < ActiveRecord::Base
  validates_presence_of :server
  validates_presence_of :online
  validates_presence_of :shops

  def self.most_recent_classic_records(number=13)
    where(:server => "classic").order("created_at desc").limit(number)
  end

  def self.most_recent_renewal_records(number=13)
    where(:server => "renewal").order("created_at desc").limit(number)
  end

  def self.population_chart_data(classic_records, renewal_records)
    combined_data = classic_records.zip(renewal_records)
    chart_data = combined_data.map do |records|
      {
        :time => records[0].created_at.localtime,
        :classic_online => records[0].online,
        :classic_shops => records[0].shops,
        :renewal_online => records[1].online,
        :renewal_shops => records[1].shops
      }
    end
  end
end
