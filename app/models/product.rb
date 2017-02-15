class Product < ApplicationRecord
  scope :by_type, ->(type) { where(group_type: type) }
  scope :by_maker, ->(maker) { where(maker: maker) }
  scope :by_model, ->(model) { where(model: model) }

  class << self
    def update_records_in_db(list)
      list.each do |val|
        parse_model_and_maker(val[:name])
        next if invalid_product_name?
        update_or_create(val)
      end
    end

    def search(search)
      search ? where('model LIKE ? OR maker LIKE ?', "%#{search}%", "%#{search}%") : all
    end

    def get_sort_column(sort)
      column_names.include?(sort) ? sort : "maker"
    end

    private

    def update_or_create(item)
      product = Product.where(group_type: item[:group_type],
                              maker: @maker_name,
                              model: @model_name,
                              site: item[:site]).first_or_initialize
      
      product.status = item[:status]
      product.price = purify_price(item[:price]) || 0.01
      product.save
    end

    def purify_price(string)
      string.gsub(RU_REGEX,'').delete(' ').split(/[.,]/).join('.').to_f if string
    end

    def parse_model_and_maker(string)
      purified_name = string.gsub(RU_REGEX,'').split(' ')
      @maker_name = purified_name[0].try(:upcase)
      @model_name = purified_name[1..5].try(:join).try(:upcase)
    end

    def invalid_product_name?
      @maker_name.blank? || @maker_name.to_i != 0 || @model_name.blank? 
    end
  end
end
