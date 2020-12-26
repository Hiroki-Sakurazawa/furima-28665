class ItemsController < ApplicationController
  before_action :move_to_index, except: [:index, :show, :search, :lady, :man, :baby, :interior, :book, :toy, :camera, :sport, :handmade, :other]
  before_action :set_item, only: [:show, :edit, :update]

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
  end

  def edit
    redirect_to action: :index unless current_user.id == @item.user.id && @item.order.nil?
  end

  def update
    if @item.update(item_params)
      redirect_to action: :show
    else
      render :edit
    end
  end

  def search
    @items = Item.search(params[:keyword])
  end

  def lady
    @items = Item.where(category_id: 2)
  end

  def man
    @items = Item.where(category_id: 3)
  end

  def baby
    @items = Item.where(category_id: 4)
  end

  def interior
    @items = Item.where(category_id: 5)
  end

  def book
    @items = Item.where(category_id: 6)
  end

  def toy
    @items = Item.where(category_id: 7)
  end

  def camera
    @items = Item.where(category_id: 8)
  end

  def sport
    @items = Item.where(category_id: 9)
  end

  def handmade
    @items = Item.where(category_id: 10)
  end

  def other
    @items = Item.where(category_id: 11)
  end

  private

  def item_params
    params.require(:item).permit(:name, :description, :category_id, :status_id, :fee_id, :area_id, :day_id, :price, :image).merge(user_id: current_user.id)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end

  def set_item
    @item = Item.find(params[:id])
  end
end
