class CirclesController < ApplicationController
  before_action :set_circle, only: %i[show edit update destroy]

  def index
    @q = Circle.ransack(params[:q])
    @circles = @q.result(distinct: true).includes(:relationships,
                                                  :users).page(params[:page]).per(10)
  end

  def show
    @relationship = Relationship.new
  end

  def new
    @circle = Circle.new
  end

  def edit; end

  def create
    @circle = Circle.new(circle_params)

    if @circle.save
      redirect_to @circle, notice: "Circle was successfully created."
    else
      render :new
    end
  end

  def update
    if @circle.update(circle_params)
      redirect_to @circle, notice: "Circle was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @circle.destroy
    redirect_to circles_url, notice: "Circle was successfully destroyed."
  end

  private

  def set_circle
    @circle = Circle.find(params[:id])
  end

  def circle_params
    params.require(:circle).permit(:name)
  end
end
