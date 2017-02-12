class GenericParser
  def refrigerator_list(source)
    set_values_from_const(source)
    (1..last_page).each_with_object([]) { |p, list| parse_items(p, list)}.uniq
  rescue StandardError => e
    p "#{e.class}: #{e.message}"
  end

  private

  def set_values_from_const(source)
    @mechanize = Mechanize.new()
    @values = {
      url: "#{source}_URL".constantize,
      site: "#{source}_SITE".constantize,
      search_class: "#{source}_GENERAL_CLASS".constantize,
      page_class: "#{source}_PAGE_CLASS".constantize,
      price_class: "#{source}_PRICE_CLASS".constantize,
      model_class: "#{source}_MODEL_CLASS".constantize
    }
    @source = source
  end

  def parse_items(page, list)
    binding.pry
    url = "#{@values[:url]}#{page}/"
    url = "http://techno.by/api/catalog/filter?parents=627&pages=#{page}/" if @source == 'TECHNO'
    page = @mechanize.get(url)
    page.search(@values[:search_class]).each do |item|
      list.push(
        maker: fetch_maker(item)[0],
        model: model_name(item),
        price: fetch_price(item),
        site: @values[:site],
        status: fetch_status(item)
        )
    end
  end

  def last_page
    @mechanize.get("#{@values[:url]}1").search(@values[:page_class])[arr_val].text.to_i
  end

  def fetch_price(item) # TODO: refactor
    @source == 'VEK' ? price_by_attr(item) : price_by_class(item)
  end

  def fetch_maker(item) # TODO: refactor
    @source == 'VEK' ? maker_by_attr(item) : maker_by_class(item)
  end

  def fetch_status(item) # TODO: refactor
    case @source
    when 'VEK'
      item.children.to_s
    when 'IMARKET'
      item.at('.status').text.strip
    when 'TECHNO'
      item.at('.estvnalichii') ? 'есть в наличии' : 'нет в наличии'
    else
      'none'
    end
  end

  def arr_val # TODO: refactor
    case @source
    when 'IMARKET' then 0
    when 'TECHNO' then -1
    else
      -2
    end
  end

  def get_status(item)
    @source == 'VEK' ? item.children.to_s : item.at('.status').text.strip
  end

  def price_by_class(item)
    item.at(@values[:price_class]).try(:text) # тот же imarket
  end

  def price_by_attr(item)
    item.attributes[@values[:price_class]].text
  end

  def maker_by_attr(item)
    item.attributes[@values[:model_class]].text.split(' ').delete_if { |i| RU_REGEX =~ i}
  end

  def maker_by_class(item)
    item.at(@values[:model_class]).text.split(' ').delete_if { |i| RU_REGEX =~ i}
  end

  def model_name(item)
    fetch_maker(item)[1..5].join('') if fetch_maker(item)[1..5] # тупая проверка из-за косяка по ссылке https://imarket.by/catalog/kholodilniki/morozilnik-saratov-104-mksh-300.html
  end
end
