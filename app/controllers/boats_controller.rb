class BoatsController < ApplicationController
  before_action :authenticate_user!, only: [:show]
  before_action :set_boat, only: [:edit, :update, :show, :destroy]

  def index


    if params[:query]
      @boats = Boat.search_by_location(params[:query])
    else
      @boats = Boat.all
    end
    # @boats = policy_scope(Boat).order(created_at: :desc)

    @markers = @boats.map do |boat|
      {
        lat: boat.latitude,
        lng: boat.longitude#,
        # infoWindow: { content: render_to_string(partial: "/flats/map_box", locals: { flat: flat }) }
      }
    end
  end

  def show
    # see before_action
    authorize @boat
    @boats = Boat.all
     @marker = [{
        lat: @boat.latitude,
        lng: @boat.longitude#,
      }]
  end

  def new
    @boat = Boat.new
    authorize @boat
  end

  def create
    @boat = Boat.new(boat_params)
    @boat.user = current_user
    authorize @boat
    if @boat.save
      redirect_to boat_path(@boat)
    else
      render :new
    end
  end

  def edit

    # see before_action
    authorize @boat
  end

  def update #do we need save method for update
    @boat.update(boat_params)
    if @boat.save
      redirect_to boat_path(@boat)
    else
      render :edit
    end
    authorize @boat
  end

  def destroy
    @boat.destroy
    redirect_to boats_path
    authorize @boat
  end



  private

  def set_boat
    @boat = Boat.find(params[:id])
  end

  def boat_params
    params.require(:boat).permit(:name, :location, :capacity, :description, :price, :boat_type, :photo, :user_id)
  end
end
