class UsersController < ApplicationController
  before_action :set_user, only: [:show]

  def show
    @reviews = @user.reviews.includes(:place)
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
  end

  private

  def set_user
    @user = User.find(params[:id])
  end
end
