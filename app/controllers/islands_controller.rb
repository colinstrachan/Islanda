class IslandsController < ApplicationController
  before_action :set_islands, only: [:show, :edit, :update, :destroy]

  def index
    @islands = Island.all
    @islands = policy_scope(Island).order(created_at: :desc)
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
