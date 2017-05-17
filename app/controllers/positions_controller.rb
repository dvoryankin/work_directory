class PositionsController < ApplicationController
  before_action :set_position, only: [:show, :edit, :update, :destroy]

  def index
    @positions = Position.page(params[:page]).per(5)
  end

  def show
  end

  def new
    @position = Position.new
  end

  def create
    @position = Position.new(position_params)

    if @position.save
      redirect_to @position
    else
      render :new
    end
  end

  def edit
  end

  def update
    @position = Position.new(position_params)

    if @position.update(position_params)
      redirect_to @position
    else
      render :new
    end
  end

  def destroy
    @position.destroy
    redirect_to positions_path
  end

  private

  def set_position
    @position = Position.find(params[:id])
  end

  def position_params
    params.require(:position).permit(:title)
  end
end