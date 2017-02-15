namespace :events do
  desc 'Test cron log'
  task test_cron_log: :environment do
    puts "#{Time.now} - Success!"
  end

  # it uses GenericParser class to parse products from
  # sources and updating(or creating) in database
  # e.g. GenericParser.new('elmarket', 'tv')

  desc 'parse products from sources and put them in db'
  task parse_products_from_sources: :environment do
    all_products = []
    PRODUCT_TYPES.each do |product_type|
      SOURCES.each do |source|
        time = Time.now
        list = GenericParser.new(source, product_type)
        all_products << list.get_products
        p "#{Time.now - time}s #{source}: #{product_type}s DONE!"
      end
    end
    Product.update_records_in_db(all_products.flatten)
  end

  # for testing (because TECHNO's execution time is sooo long...zzz)
  desc 'parse products from sources and put them in db(without techno!)'
  task parse_products_from_sources_without_techno: :environment do
    all_products = []
    PRODUCT_TYPES.each do |product_type|
      %w(vek elmarket imarket).each do |source|
        time = Time.now
        list = GenericParser.new(source, product_type)
        all_products << list.get_products
        p "#{Time.now - time}s #{source}: #{product_type}s DONE!"
      end
    end
    Product.update_records_in_db(all_products.flatten)
  end
end
