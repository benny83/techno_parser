namespace :events do
  desc 'Test cron log'
  task test_cron_log: :environment do
    puts "#{Time.now} - Success!"
  end

  desc 'parse products from sources and put them in db'
  task parse_products_from_sources: [:environment,
                                     :parse_refrigerators,
                                     :parse_kettles,
                                     :parse_coffeemakers,
                                     :parse_vacuum_cleaners,
                                     :parse_tvs,
                                     :parse_videocameras,
                                     :parse_cameras]

  desc 'parse refrigerators from sources and put them in db'
  task parse_refrigerators: :environment do
    list = []
    %w(TECHNO).each do |source|
      # %w(VEK ELMARKET IMARKET TECHNO).each do |source|
      refs = GenericParser.new
      list << refs.refrigerator_list(source)
    end
    # list.flatten
    binding.pry
  end
end
