class CarsController < ApplicationController

  before_action :set_car, only: [:show, :edit, :update, :destroy]

  def index
    if params[:query].present?
      @query = params[:query]
      @cars = Car.where("name LIKE ?", "%#{params[:query]}%")
      # Preventing SQL Injection and Database error for
      # unknown characters
    else
      @cars = Car.all
    end
  end

def new
  @car = Car.new
end

def create
  @car = Car.new(car_params)
  @car.user = current_user
  if @car.save
    redirect_to cars_path
  else
    render :new, status: :unprocessable_entity
  end
end

def edit
end

def show
end

def update
  if @car.update(car_params)
    redirect_to car_path(@car)
  else
    render :new, status: :unprocessable_entity
  end
end

def destroy
  @car.destroy
  redirect_to cars_path, status: :see_other
end

private

def set_car
  @car = Car.find(params[:id])
end

def car_params
  params.require(:car).permit(:km, :trademark, :year, :price)
end

end
