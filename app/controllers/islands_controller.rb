class IslandsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show, :search]
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

  def search
    search_start = params[:search][:daterange].split(" to ").first
    search_end = params[:search][:daterange].split(" to ").last
    search_location = params[:search][:location]
    @islands = policy_scope(Island).available?(search_start, search_end, search_location).order(created_at: :desc)
  end

  def new
    @island = Island.new
    authorize @island
  end

  def show
    @booking = Booking.new

    @booked_dates = []
    @island.bookings.each do |booking|
      @booked_dates << { from: booking.start_date, to: booking.end_date }
    end

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
