class ItemsController < ApplicationController

  def show
    @item = Item.find(id: params[:id])
  end
end
