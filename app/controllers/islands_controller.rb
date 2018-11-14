class IslandsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_islands, only: [:show, :edit, :update, :destroy]

  def index

    @islands = policy_scope(Island).order(created_at: :desc)

    @map_islands = Island.where.not(latitude: nil, longitude: nil)
    @markers = @map_islands.map do |island|
      {
        lng: island.longitude,
        lat: island.latitude,
        infoWindow: { content: render_to_string(partial: "/islands/map_window", locals: { island: island }) }

      }
    end

  end

  def new
    @island = Island.new
    authorize @island
  end

  def show
    @booking = Booking.new
  end

  def create
    @island = Island.new(islands_params)
    @island.user = current_user
    redirect_to island_path(@island) if @island.save
    render :new if @island.save == false
    authorize @island
  end

  def edit
  end

  def update
    @island.update(islands_params)
    redirect_to island_path(@island)
  end

  def destroy
    @island.destroy
    redirect_to islands_path
  end

  private

  def islands_params
    params.require(:island).permit(:name, :description, :location, :climate, :capacity, :price, :photo)
  end

  def set_islands
    @island = Island.find(params[:id])
    authorize @island
  end
end
