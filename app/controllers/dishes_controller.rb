# frozen_string_literal: true

class DishesController < ApplicationController
  # before_action :authenticate_user!, except: %i[index show]

  before_action :set_dish, only: %i[show edit update destroy]

  def index
    @dishes = Dish.paginate(page: params[:page], per_page: 5)
  end

  def new
    @dish = Dish.new
  end

  def create
    @dish = Dish.new(dish_params)
    if @dish.save
      redirect_to @dish, success: 'Блюдо успешно создано'
    else
      flash.now[:danger] = 'Блюдо не создано'
      render :new
    end
  end

  def update
    if @dish.update(dish_params)
      redirect_to @dish, success: 'Блюдо успешно изменено'
    else
      flash.now[:danger] = 'Блюдо не изменено'
      render :edit
    end
  end

  def destroy
    @dish.destroy
    redirect_to root_path, success: 'Блюдо успешно удалено'
  end

  private

  def set_dish
    @dish = Dish.find(params[:id])
  end

  def dish_params
    params.require(:dish).permit(:name, :price, :description, :category_id, :image)
  end
end
