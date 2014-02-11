class PagesController < ApplicationController
  def index
    @classic_records = PopulationInformation.most_recent_classic_records(3)
    @renewal_records = PopulationInformation.most_recent_renewal_records(3)
  end
end