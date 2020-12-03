class ItemsController < ApplicationController
  before_action :move_to_index, except: [:index, :show]

  def index
    @items = Item.all.order('created_at DESC')
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

  def destroy
    item = Item.find(params[:id])
    if current_user.id == item.user.id
      item.destroy
      redirect_to action: :index
    else
      redirect_to action: :index
    end
  end

  def show
    @item = Item.find(params[:id])
  end

  def edit
    @item = Item.find(params[:id])
    unless current_user.id == @item.user.id
      redirect_to action: :index
    end
  end

  def update
    @item = Item.find(params[:id])
    if @item.update(item_params)
      redirect_to action: :show
    else
      render :edit
    end
  end

  private

  def item_params
    params.require(:item).permit(:name, :description, :category_id, :status_id, :fee_id, :area_id, :day_id, :price, :image).merge(user_id: current_user.id)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
end
