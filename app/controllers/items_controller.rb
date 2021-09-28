class ItemsController < ApplicationController
  
def index
    @items = Item.all
end

def new
  @item = Item.new
end

def create
  @item = Item.new(item_params)
end

private
  def item_params
    params.require(:item).permit(:title, :text, :category_id, :detail_id, :delivery_price_id, :day_id, :price, :area_id, images: []).merge(user_id: current_user.id)
  end

end