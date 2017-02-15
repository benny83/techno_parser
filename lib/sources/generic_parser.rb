class GenericParser
  def initialize(source, type)
    @type = type
    @source = source
    @mechanize = Mechanize.new()  
    @values = build_hash_of_attributes
  end

  def get_products
    (1..last_page).each_with_object([]) { |p, list| parse_items(p, list)}.uniq
  rescue StandardError => e
    p "GenericParserERROR: #{e.class}: #{e.message}"
  end

  private

  def build_const(*args)
    args.join('_').upcase.constantize
  end

  def build_hash_of_attributes
    attr_hash = SOURCE_KEYS.each_with_object({}) { |val, h| h[val.to_sym] = build_const(@source, val) }
    attr_hash[:url] = get_url
    attr_hash
  end

  def get_url
    build_const(@source, @type, 'url')
  end

  def last_page
    page_class = build_const(@source, 'page_class')
    page_index = build_const(@source, 'page_index')
    pages_of_products = @mechanize.get(first_page).search(page_class)[page_index]
    pages_of_products ? pages_of_products.text.to_i : 1
  end

  def first_page
    is_techno? ? build_const(@source, @type, 'url_1') : get_url + '1'
  end

  def is_techno?
    @source == 'techno'
  end

  def is_vek?
    @source == 'vek'
  end

  def fetch_product_field(item, class_name)
    is_vek? ? by_attribute(item, class_name) : by_class(item, class_name)
  end

  def by_attribute(item, class_name)
    item.attributes[class_name].text
  end

  def by_class(item, class_name)
    item.at(class_name).try(:text)
  end

  def fetch_status(item)
    case @source
    when 'vek'
      item.children.to_s
    when 'imarket'
      item.at('.status').text.strip
    when 'elmarket'
      item.at('.estvnalichii')
    else
      'unknown'
    end
  end

  def parse_items(page, list)
    html = @mechanize.get("#{get_url}#{page}/")
    html.search(@values[:search_class]).each do |item|
      list.push(
        name: fetch_product_field(item, @values[:model_class]),
        price: fetch_product_field(item, @values[:price_class]),
        site: @values[:site],
        group_type: @type,
        status: fetch_status(item)
        )
    end
  end
end
