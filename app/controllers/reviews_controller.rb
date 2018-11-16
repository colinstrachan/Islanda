class ReviewsController < ApplicationController
  before_action :set_islands, only: [:new, :create]

  def index
    @reviews = Review.all
  end

  def new
    @review = Review.new
    authorize @review
  end

  def show
    @review = Review.find(params[:id])
    authorize @review
  end

  def create
    @review = Review.new(review_params)
    @review.island = @island
    @review.save
    redirect_to island_path(@island) if @island.save
    render :new if @island.save == false
    authorize @review

  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
  end

private

  def set_islands
    @island = Island.find(params[:island_id])
  end

  def review_params
    params.require(:review).permit(:description, :rating)
  end
end
