class CartsController < ApplicationController

  def show
    @cart = Cart.find_by(id: params[:id])
    raise current_cart.inspect
  end

  def current_cart
    current_user.current_cart
  end

  def current_cart=(cart)
    current_user.current_cart = cart
  end

  def checkout
    cart = Cart.find_by(id: params[:id])
    cart.checkout
    redirect_to cart_path(cart)
  end
end
