class VehiclesController < ApplicationController
  def index
    @vehicles = Vehicle.all
  end

  def new
    @vehicle = Vehicle.new
  end

  def create
    # raise params.inspect
    @vehicle = Vehicle.new(vehicle_params)

    if @vehicle.save
      redirect_to @vehicle
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @vehicle = Vehicle.find(params[:id])
  end

  def destroy
    @vehicle = Vehicle.find(params[:id])
    @vehicle.destroy
    redirect_to vehicles_path
  end

  private

  def vehicle_params
    params.require(:vehicle).permit(:vin, :year, :make, :model, :trim)
  end
end
