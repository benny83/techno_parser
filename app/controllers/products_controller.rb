class ProductsController < ActionController::Base
  helper_method :sort_column, :sort_direction

  def index
    if params[:search]
      @products = Product.search(params[:search]).order(sort_column + " " + sort_direction).paginate(page: params[:page], per_page: 25)
    else
      @products = Product.where(group_type: params[:group_type]).order(sort_column + " " + sort_direction).paginate(page: params[:page], per_page: 25)
    end
  end

  private
  
  def sort_column
    Product.column_names.include?(params[:sort]) ? params[:sort] : "maker"
  end
  
  def sort_direction
    %w(asc desc).include?(params[:direction]) ? params[:direction] : "asc"
  end
end
