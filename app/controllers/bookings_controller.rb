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
    if params[:booking][:start_date] == "" || params[:booking][:start_date].nil?
      redirect_to island_path(@island)
    else
      if !params[:booking][:start_date].include?("to")
        requested_start_date = params[:booking][:start_date].to_date
        requested_end_date = requested_start_date
      else
        requested_date_range = params[:booking][:start_date].split(" to ")
        requested_start_date = requested_date_range.first.to_date
        requested_end_date = requested_date_range.last.to_date
      end
      @booking.island = @island
      @booking.user = current_user
      if @island.available?(requested_start_date, requested_end_date)
        @booking.start_date = requested_start_date
        @booking.end_date = requested_end_date
        @booking.save
        redirect_to booking_path(@booking) if @booking.save
        
        redirect_to island_path(@island) if @booking.save == false


        flash[:alert] = "The dates of your booking are invalid." if @booking.save == false

        authorize @booking
      else
        
        redirect_to island_path(@island)
 
        flash[:alert] = "The island is not available on these dates.
        authorize @booking
      end
      authorize @booking
    end
    authorize @booking
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to user_bookings_path(current_user)
    flash[:notice] = "Your booking has been cancelled.  We have notified the island owner."
    authorize @booking
  end

  private

  def set_islands
    @island = Island.find(params[:island_id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
