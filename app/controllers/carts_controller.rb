class CartsController < ApplicationController

  def show
    raise current_cart.inspect
    @cart = Cart.find(params[:id])
  end

  def checkout
    cart = Cart.find_by(id: params[:id])
    cart.checkout
    redirect_to cart_path(cart)
  end
end
