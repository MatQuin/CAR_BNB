class BookingsController < ApplicationController

  before_action :set_booking, only: [:show, :edit, :update, :destroy]

def index
  @bookings = Booking.all
end

def new
  @booking = Booking.new
end

def create
  @booking = Booking.new(booking_params)
  if @booking.save
    redirect_to bookings_path
  else
    render :new, status: :unprocessable_entity
  end
end

def edit
end

def show
end

def update
  if @booking.update(booking_params)
    redirect_to booking_path(@booking)
  else
    render :new, status: :unprocessable_entity
  end
end

def destroy
  @booking.destroy
  redirect_to bookings_path, status: :see_other
end

private

def set_booking
  @booking = Booking.find(params[:id])
end

def booking_params
  params.require(:booking).permit(:start, :end)
end

end
