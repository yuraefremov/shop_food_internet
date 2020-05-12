class DishesController < ApplicationController
  def index
    @dishes =  Dish.all
  end

  def show
    @dish = Dish.find(params[:id])
  end

  def create
    @dish = Dish.new(dish_params)
    if @dish.save
      redirect_to @dish, success: 'Блюдо успешно создано'
    else
      render :new
    end
  end

  def update 
    @post = Post.find(params[:id])
  end

  def delete
  end

  private 

  def dish_params
    params.require(:dish).permit(:name, :price, :description)
  end
end
