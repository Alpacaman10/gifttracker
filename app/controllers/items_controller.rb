class ItemsController < ApplicationController
  before_action :current_user_must_be_item_creator, only: [:edit, :update, :destroy] 

  before_action :set_item, only: [:show, :edit, :update, :destroy]

  # GET /items
  def index
    @q = current_user.gifts.ransack(params[:q])
    @items = @q.result(:distinct => true).includes(:creator, :purchased_by, :circle).page(params[:page]).per(10)
  end

  # GET /items/1
  def show
  end

  # GET /items/new
  def new
    @item = Item.new
  end

  # GET /items/1/edit
  def edit
  end

  # POST /items
  def create
    @item = Item.new(item_params)

    if @item.save
      message = 'Item was successfully created.'
      if Rails.application.routes.recognize_path(request.referrer)[:controller] != Rails.application.routes.recognize_path(request.path)[:controller]
        redirect_back fallback_location: request.referrer, notice: message
      else
        redirect_to @item, notice: message
      end
    else
      render :new
    end
  end

  # PATCH/PUT /items/1
  def update
    if @item.update(item_params)
      redirect_to @item, notice: 'Item was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /items/1
  def destroy
    @item.destroy
    message = "Item was successfully deleted."
    if Rails.application.routes.recognize_path(request.referrer)[:controller] != Rails.application.routes.recognize_path(request.path)[:controller]
      redirect_back fallback_location: request.referrer, notice: message
    else
      redirect_to items_url, notice: message
    end
  end


  private

  def current_user_must_be_item_creator
    set_item
    unless current_user == @item.creator
      redirect_back fallback_location: root_path, alert: "You are not authorized for that."
    end
  end

    # Use callbacks to share common setup or constraints between actions.
    def set_item
      @item = Item.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def item_params
      params.require(:item).permit(:created_by, :image, :url, :description, :price, :received, :purchased_by_id, :circle_id, :priority)
    end
end
