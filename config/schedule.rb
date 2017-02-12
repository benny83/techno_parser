# whenever --update-crontab --set environment='development'
# crontab -l

set :cron_log, "~/Home/techno_parser/log/cron_log.log"
case @environment

when 'development'
  every 5.minutes do
    rake "events:test_cron_log"
  end

  every 1.day at: '4pm' do
    rake "events:parse_products_from_sources"
  end
end
