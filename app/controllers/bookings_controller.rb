class BookingsController < ApplicationController
before_action :set_islands, only: [:new, :create]

  def index
    @bookings = policy_scope(Booking).order(created_at: :desc)
  end

  def show
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def new
    @booking = Booking.new
    authorize @booking
  end

  def create
    @booking = Booking.new
    requested_date_range = params[:booking][:start_date].split(" to ")
    requested_start_date = requested_date_range.first.to_date
    requested_end_date = requested_date_range.last.to_date
    @booking.island = @island
    @booking.user = current_user
    if @island.available?(requested_start_date, requested_end_date)
      @booking.start_date = requested_start_date
      @booking.end_date = requested_end_date
      @booking.save
      redirect_to booking_path(@booking) if @booking.save
      render("islands/show", island: @island) if @booking.save == false
      flash[:error] = "The dates of your booking are invalid." if @booking.save == false
      authorize @booking
    else
      render("islands/show", island: @island)
      flash[:error] = "The island is not available on these dates."
      authorize @booking
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
  end

  private

  def set_islands
    @island = Island.find(params[:island_id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
