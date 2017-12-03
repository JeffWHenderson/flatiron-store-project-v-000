class CartsController < ApplicationController

  def show
    @cart = Cart.find(params[:id])
    raise current_cart.inspect
  end

  def checkout
    cart = Cart.find_by(id: params[:id])
    cart.checkout
    redirect_to cart_path(cart)
  end
end
