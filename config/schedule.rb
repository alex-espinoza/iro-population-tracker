set :environment, "development"
set :output, "#{path}/log/cron.log"

every 10.minutes do
  rake "scrape_ragial"
end