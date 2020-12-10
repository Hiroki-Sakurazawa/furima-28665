class OrdersController < ApplicationController

  def index
    @item = Item.find(params[:item_id])
  end

  def create
    # @order_address = OrderAddress.new
    Order.create(order_params)
    Address.create(address_params)
    redirect_to action: :index
  end

  private

  def order_params
    params.permit(:item_id).merge(user_id: current_user.id)
  end

  def address_params
    params.permit(:zip_code, :prefecture_id, :city, :house_num, :building, :phone).merge(user_id: current_user.id, order_id: order.id)
  end
  
end
