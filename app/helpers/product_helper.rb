module ProductHelper
  def show_status(product)
    product.site == '21vek.by' ? vekby_status(product) : check_if_exist(product)
  end

  private

  def vekby_status(product)
    product.status == 'нет на складе' ? product.status : 'в наличии'
  end

  def check_if_exist(product)
    product.site == 'elmarket.by' ? 'неизвестно' : product.status
  end
end
