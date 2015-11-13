class PinsController < ApplicationController
  before_action :set_pins, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  def index
    if current_user
    @pins = current_user.pins
  else
    @pins = Pin.all
  end
end

  def new
    @pins = Pin.find(params[:Pin_id])
    @pins = Pin.new
  end
  def create
    @pins = Pin.find(params[:pins_id])
    @pins = @pins.create(pins_params)
    redirect_to pins_path(@pins)
  end
  def edit
    @pins = Pin.find(params[:pins_id])
  end
  def update
    @pins = Pin.find(params[:pins_id])
    @pins.update(comment_params)
    redirect_to pins_path(@pins)
  end
  def destroy
    @pins = Pin.find(params[:pins_id])
    @pins.destroy
    redirect_to pins_path(@pins)
  end
end
