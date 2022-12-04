class VehiclesController < ApplicationController
  def index
    @vehicles = Vehicle.all
  end

  def destroy
    @vehicle = Vehicle.find(params[:id])
    @vehicle.destroy
    redirect_to vehicles_path
  end
end
