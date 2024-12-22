class ReviewsController < ApplicationController
  before_action :set_review, only: %i[ show edit update destroy ]
  before_action :set_place

  # POST /reviews or /reviews.json
  def create
    @review = @place.reviews.find_or_initialize_by(user: current_user)
    @review.user_id = current_user.id
    @review.assign_attributes(review_params)

    if @review.save
      redirect_to @place, notice: "Ваш отзыв успешно добавлен."
    else
      flash.now[:alert] = @review.errors.full_messages.to_sentence
      render :new
    end
  end

  # DELETE /reviews/1 or /reviews/1.json
  def destroy
    @review.destroy!

    respond_to do |format|
      format.html { redirect_to reviews_path, status: :see_other, notice: "Review was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_review
      @review = Review.find(params[:id])
    end

    def set_place
      @place = Place.find(params[:place_id])
    end

    # Only allow a list of trusted parameters through.
    def review_params
      params.require(:review).permit(:user_id, :place_id, :rating, :description)
    end
end
