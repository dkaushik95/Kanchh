class PageController < ApplicationController
  def index
  	@products = Shoppe::Product.root.ordered.includes(:product_categories, :variants)
    @products = @products.group_by(&:product_category)
  end

  def designers
  end

  def about
  end
end
