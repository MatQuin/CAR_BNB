class CarsController < ApplicationController

  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]



def new
  @car = Car.new
end

def create
  @car = Car.new(params[:car])
  @car.save
end

def edit
end

def update
  @car.update(params[:car])
  redirect_to car_path(@car)
end

def destroy
  @restaurant.destroy
end

private

def set_car
  @car = Car.find(params[:id])
end

end
