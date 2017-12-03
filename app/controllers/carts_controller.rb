class CartsController < ApplicationController

  def show
    @cart = Cart.find_by(id: params[:id])
    raise current_user.local_methods.inspect
  end

  def checkout
    cart = Cart.find_by(id: params[:id])
    cart.checkout
    redirect_to cart_path(cart)
  end
end
