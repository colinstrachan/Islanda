class BookingsController < ApplicationController
  before_action :set_islands

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
    @booking = Booking.new(booking_params)
    @booking.island = @island
    @booking.save
    authorize @booking
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
