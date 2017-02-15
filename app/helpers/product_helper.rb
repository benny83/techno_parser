module ProductHelper
  def show_status(product)
    product.site == '21vek.by' ? vekby_status(product) : check_if_exist(product)
  end

  def find_same_products(product)
    Product.by_type(product.group_type).by_maker(product.maker).by_model(product.model)
  end

  def sorted_products(products)
    products.sort_by {|x| x.price}
  end

  def table_class(index)
    index == 0 ? 'success' : 'danger'
  end

  def get_partial_name(products)
    products.size == 1 ? 'single' : 'sorted'
  end

  private

  def vekby_status(product)
    product.status == 'нет на складе' ? product.status : 'в наличии'
  end

  def check_if_exist(product)
    product.site == 'elmarket.by' ? 'неизвестно' : product.status
  end
end
