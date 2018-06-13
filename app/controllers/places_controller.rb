class PlacesController < ApplicationController
  def index
    @places = Place.all.order(created_at:'desc')
  end
  def new
    @places = Place.all.order(created_at:'desc')
  end
  def show
    @places = Place.all.order(created_at:'desc')
    @place = Place.find(params[:id])
  end
  # Never trust parameters from the scary internet, only allow the white list through.
  def product_params
    params.require(:place).permit(:photo, :name, :comment, :map, :updated_at, :created_at, :image_cache, :remove_image)
  end
end
