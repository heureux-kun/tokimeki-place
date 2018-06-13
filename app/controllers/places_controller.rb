class PlacesController < ApplicationController
  
  def index
    @places = Place.all.order(created_at:'desc')
  end

  def new
    @place = Place.new
  end

  def create
    @place = Place.new(place_params)

    respond_to do |format|
      if @place.save
        format.html{ redirect_to place_path(@place), notice: '投稿が完了しました。' }
      else
        format.html{ render action: 'new' }
      end
    end

  end

  def show
    @places = Place.all.order(created_at:'desc')
    @place = Place.find(params[:id])
  end

  def edit
    @places = Place.all.order(created_at:'desc')
    @place = Place.find(params[:id])
  end

  def update
    @place = Place.find(params[:id])
    if @place.update(place_params)
      redirect_to place_path(@place)
   else
     render :edit
   end
  end

private
  def place_params
    params.require(:place).permit(:photo, :name, :comment, :map, :updated_at, :created_at, :image_cache, :remove_image)
  end

end
