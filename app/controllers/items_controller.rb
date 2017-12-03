class ItemsController < ApplicationController

  def show
    @items = Item.find(id: params[:id])
  end

  def show
    @item = Item.find(id: params[:id])
  end
end
