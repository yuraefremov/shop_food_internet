class DishesController < ApplicationController

  before_action :set_dish, only:[:show, :edit, :update, :destroy ]
  
  def index
    @dishes =  Dish.all
  end

  def show
  end

  def new
    @dish = Dish.new
  end

  def create
    @dish = Dish.new(dish_params)
    if @dish.save
      redirect_to @dish, success: 'Блюдо успешно создано'
    else
      render :new
    end
  end

  def edit
  end

  def update 
    if @dish.update(dish_params)
      redirect_to @dish, success: 'Блюдо успешно изменено'
    else
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
    params.require(:dish).permit(:name, :price, :description)
  end
end
