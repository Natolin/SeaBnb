class BookingsController < ApplicationController
 def new
    @boat = Boat.find(params[:boat_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @boat = Boat.find(params[:boat_id])
    @booking.boat = @boat
    @booking.user = current_user
    if @booking.save
      flash[:success] = "Your booking has been successfully created!"
      redirect_to my_trips_path
    else
      render :new
    end
  end

  def edit
    @booking = Booking.find(params[:id])
    @boat = Boat.find(params[:boat_id])
  end

  def update
    @booking = Booking.find(params[:id])
    boat = Boat.find(params[:boat_id])
    @booking.update(booking_params)
    if @booking.save
      redirect_to my_trips_path
    else
      render :edit
    end
  end

private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :boat_id, :user_id)
  end
end
