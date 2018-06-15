class DashboardsController < ApplicationController
  def dashboard
    @my_bookings = current_user.bookings
    @my_boats = current_user.boats
    # redirect_to dashboard_path(@my_bookings, @my_boats)
  end
end
