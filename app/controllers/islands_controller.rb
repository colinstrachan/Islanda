class IslandsController < ApplicationController

  def index
    @islands = Island.all
  end

  def new
    @island = Island.new
  end

  def show
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
   def islands_params
    params.require(:island).permit(:name, :description, :location, :climate, :capacity, :price)

   def set_islands
    @island = Island.find(params[:id])
   end

end

