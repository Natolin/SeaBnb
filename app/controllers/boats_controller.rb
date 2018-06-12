class BoatsController < ApplicationController
  before_action :set_boat, only: [:edit, :update, :show, :destroy]

  def index
    @boats = Boat.all
  end

  def show
    # see before_action
  end

  def new
    @boat = Boat.new
  end

  def create
    @boat = Boat.new(boat_params)
    if @boat.save
      redirect_to boat_path(@boat)
    else
      render :new
    end
  end

  def edit
    # see before_action
  end

  def update #do we need save method for update
    @boat.update(boat_params)
    if @boat.save
      redirect_to boat_path(@boat)
    else
      render :edit
    end
  end

  def destroy
    @boat.destroy
    redirect_to boats_path
  end



  private

  def set_boat
    @boat = Boat.find(params[:id])
  end

  def boat_params
    params.require(:boat).permit(:name, :location, :capacity, :description, :price, :boat_type, :user_id)
  end
end
