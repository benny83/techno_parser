class ProductsController < ActionController::Base
  def index
    binding.pry
    # a = Time.now
    @refs = Vek21.new
    # # @refs = Elmarket.new
    azaza = @refs.refrigerator_list
    # b = Time.now
    # p b - a
  end
end
