class Admin::DashboardController < ApplicationController
  def show
    @product_total = Product.order(id: :desc).count
    @product_categories = Category.order(id: :desc).count
  end
end
