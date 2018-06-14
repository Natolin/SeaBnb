class BookingsController < ApplicationController
 def new
    @boat = Boat.find(params[:boat_id])
    @booking = Booking.new
    # authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    @boat = Boat.find(params[:boat_id])
    @booking.boat = @boat
    # authorize @booking
    @booking.user = current_user
    if @booking.save
      redirect_to boat_path(@boat)
    else
      render :new
    end
  end

  def edit
    # authorize @booking
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    boat = Boat.find(params[:boat_id])
    @booking.update(booking_params)
    # authorize @booking
    if @booking.save
      redirect_to booking_requests_path

    else
      render :edit
    end
  end

private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :boat_id, :user_id)
  end
end
