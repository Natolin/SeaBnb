class DashboardsController < ApplicationController
  def my_trips
    @my_bookings = current_user.bookings
  end

  def my_boats
    @my_boats = current_user.boats
  end
end
