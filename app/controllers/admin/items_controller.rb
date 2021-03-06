class Admin::ItemsController < ApplicationController
  before_action :authenticate_admin!,only: [:create, :edit, :update, :index, :show, :new]

  def index
    @items = Item.all
    @items = @items.where('name LIKE ?', "%#{params[:search]}%") if params[:search].present?
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    # byebug
    @item.save
    flash[:notice]="You have creatad item successfully."
    redirect_to admin_items_path
  end

  def show
    @item = Item.find(params[:id])
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    @item.update(item_params)
    redirect_to admin_item_path
  end

  private

  def item_params
    params.require(:item).permit(:image, :genre_id, :name, :introduction, :price, :is_status)
  end
end
