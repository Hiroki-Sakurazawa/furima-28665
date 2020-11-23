class ItemsController < ApplicationController
  def index
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.valid?
      @item.save
      redirect_to action: :index
    else
      render :new
    end
  end

  private

  def item_params
    params.require(:item).permit(:name, :description, :category_id, :status_id, :fee_id, :area_id, :days_id, :price, :image).merge(user_id: current_user.id)
  end
end
