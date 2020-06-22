# frozen_string_literal: true

class Api::V1::CategoriesController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    categories = Category.order('created_at DESC')
    render json: { status: 'SUCCESS', message: 'Загрузка категорий', data: categories }, status: :ok
  end

  def show
    category = Category.find(params[:id])
    render json: { status: 'SUCCESS', message: 'Загрузка категории', data: category }, status: :ok
  end

  def create
    category = Category.new(category_params)
    if category.save
      render json: { status: 'SUCCESS', message: 'Категория сохранена', data: category }, status: :ok
    else
      render json: { status: 'ERROR', message: 'Категория не сохранена', data: category.errors }, status: :unprocessable_entity
    end
  end

  def update
    category = Category.find(params[:id])
    if category.update_attributes(category_params)
      render json: { status: 'SUCCESS', message: 'Категория изменена', data: category }, status: :ok
    else
      render json: { status: 'ERROR', message: 'Категория не изменена', data: category.errors }, status: :unprocessable_entity
    end
  end

  def destroy
    category = Category.find(params[:id])
    category.destroy
    render json: { status: 'SUCCESS', message: 'Категория успешно удалена', data: category }, status: :ok
  end

  private

  def category_params
    params.require(:category).permit(:name)
  end
end
