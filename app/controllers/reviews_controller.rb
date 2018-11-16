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
    authorize @review = Review.new(review_params)
    @review.island = @island
    @review.user = current_user
    if @review.save
      respond_to do |format|
        format.html { redirect_to island_path(@island) }
        format.js  # <-- will render `app/views/reviews/create.js.erb`
      end
    else
      respond_to do |format|
        format.html { render 'island/show' }
        format.js  # <-- idem
      end
    end

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
