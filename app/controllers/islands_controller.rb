class IslandsController < ApplicationController
  before action :set_islands, only: [:show, :edit, :update, :destroy]

  def index
    @islands = Island.all
  end

  def new
    @island = Island.new
  end

  def show
  end

  def create
    Island.create(islands_params)
    redirect to islands_path
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
    params.require(:island).permit(:name, :description, :location, :climate, :capacity, :price)
  end

  def set_islands
    @island = Island.find(params[:id])
  end
end
