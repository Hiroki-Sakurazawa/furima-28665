class OrdersController < ApplicationController
  def index
    @item = Item.find(params[:item_id])
    @order_address = OrderAddress.new
  end

  def create
    @item = Item.find(params[:item_id])
    @order_address = OrderAddress.new(order_params)
    binding.pry
    if @order_address.valid?
      user_id = current_user.id
      @order_address.save(user_id)
      redirect_to root_path
    else
      render action: :index
    end
  end

  private

  def order_params
    params.require(:order_address).permit(:zip_code, :prefecture_id, :city, :house_num, :building, :phone).merge(item_id: @item.id)
  end
end
