desc "Get iRO server population information from www.ragial.com"
task :scrape_ragial => :environment do
  require 'nokogiri'
  require 'open-uri'

  url = "http://ragial.com/iRO-Classic"
  doc = Nokogiri::HTML(open(url))

  classic_online = doc.css("div.slist dt")[0].text
  classic_shops = doc.css("div.slist dt")[1].text

  url = "http://ragial.com/iRO-Renewal"
  doc = Nokogiri::HTML(open(url))

  renewal_online = doc.css("div.slist dt")[0].text
  renewal_shops = doc.css("div.slist dt")[1].text

  if classic_online && classic_shops && renewal_online && renewal_shops
    PopulationInformation.create(:server => 'classic', :online => classic_online.to_i, :shops => classic_shops.to_i)
    PopulationInformation.create(:server => 'renewal', :online => renewal_online.to_i, :shops => renewal_shops.to_i)
  end
end
