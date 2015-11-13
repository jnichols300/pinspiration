class PinsController < ApplicationController
  before_action :set_pin, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  def index
    if current_user
    @pin = current_user.pin
  else
    @pin = Pin.all
  end
end

  def new
    # @pin = Pin.find(params[:user_id])
    @pin = Pin.new
  end
  def create
    @pin = Pin.find(params[:user_id])
    @pin = @pin.create!(pin_params)
    redirect_to pin_path(@pin)
  end
  def edit
    @pin = Pin.find(params[:user_id])
  end
  def update
    @pin = Pin.find(params[:user_id])
    @pin.update(comment_params)
    redirect_to pin_path(@pin)
  end
  def destroy
    @pin = Pin.find(params[:id])
    @pin.destroy
    redirect_to pin_path(@pin)
  end
end
