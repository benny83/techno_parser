class ProductsController < ActionController::Base
  helper_method :sort_column, :sort_direction

  def index
    list = params[:search] ? Product.search(params[:search]) : Product.by_type(params[:group_type])
    @products = list
                .group(:maker, :model)
                .order("#{sort_column} #{sort_direction}")
                .paginate(page: params[:page], per_page: 25)
  end

  private
  
  def sort_column
    Product.get_sort_column(params[:sort])
  end
  
  def sort_direction
    %w(asc desc).include?(params[:direction]) ? params[:direction] : "asc"
  end
end
