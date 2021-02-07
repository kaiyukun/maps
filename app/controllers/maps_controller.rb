class MapsController < ApplicationController
  def index
    @maps = Map.all
    @map = Map.new
  end

  def new
    @map = Map.new
  end

  def create
    map = Map.new(map_params)
    map.save
    redirect_to maps_path
  end

  def destroy
    map = Map.find(params[:id])
    map.destroy
    redirect_to maps_path
  end

  private
  def map_params
    params.require(:map).permit(:address)
  end
end
