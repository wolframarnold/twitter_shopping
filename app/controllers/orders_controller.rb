class OrdersController < ApplicationController
  before_action :authenticate_user!

  def create
    @product = Product.find(params[:product_id])
    current_user.orders.create(product: @product)
    # TODO : finish controller

  end
end
