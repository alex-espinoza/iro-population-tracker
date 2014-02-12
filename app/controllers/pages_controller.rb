class PagesController < ApplicationController
  def index
    @classic_records = PopulationInformation.most_recent_classic_records(13)
    @renewal_records = PopulationInformation.most_recent_renewal_records(13)
    @population_chart_data = PopulationInformation.population_chart_data(@classic_records, @renewal_records)
  end
end