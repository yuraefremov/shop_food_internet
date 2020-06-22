# frozen_string_literal: true

class Api::V1::DishesController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    dishes = Dish.order('created_at DESC')
    render json: { status: 'SUCCESS', message: 'Загрузка блюд', data: dishes }, status: :ok
  end

  def show
    dish = Dish.find(params[:id])
    render json: { status: 'SUCCESS', message: 'Загрузка блюда', data: dish }, status: :ok
  end

  def create
    dish = Dish.new(dish_params)
    if dish.save
      render json: { status: 'SUCCESS', message: 'Блюдо сохранено', data: dish }, status: :ok
    else
      render json: { status: 'ERROR', message: 'Блюдо не сохранено', data: dish.errors }, status: :unprocessable_entity
    end
  end

  def update
    dish = Dish.find(params[:id])
    if dish.update_attributes(dish_params)
      render json: { status: 'SUCCESS', message: 'Блюдо измененно', data: dish }, status: :ok
    else
      render json: { status: 'ERROR', message: 'Блюдо не изменено', data: dish.errors }, status: :unprocessable_entity
    end
  end

  def destroy
    dish = Dish.find(params[:id])
    dish.destroy
    render json: { status: 'SUCCESS', message: 'Блюдо успешно удалено', data: dish }, status: :ok
  end

  private

  def set_dish
    @dish = Dish.find(params[:id])
 end

  def dish_params
    params.require(:dish).permit(:name, :price, :description, :category_id, :image)
  end
end
