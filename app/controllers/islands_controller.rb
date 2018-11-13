class IslandsController < ApplicationController
  before_action :set_islands, only: [:show, :edit, :update, :destroy]

  def index
    @islands = policy_scope(Island).order(created_at: :desc)
  end

  def new
    @island = Island.new
    authorize @island
  end

  def show
    authorize @island
  end

  def create
    Island.create(islands_params)
    redirect to islands_path
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
  end

  private

  def islands_params
    params.require(:island).permit(:name, :description, :location, :climate, :capacity, :price, :photo)
  end

  def set_islands
    @island = Island.find(params[:id])
  end
end
