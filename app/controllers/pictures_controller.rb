class PicturesController < ApplicationController

  def index
    @pictures = Picture.all_asc
  end

  def descending
    @pictures = Picture.all_desc

    render :index
  end

  def couple
    @pictures = Picture.all_couple

    render :index
  end

  def show
    @picture = Picture.find(params[:id])
  end

  private
  def picture_params
   params.require(:picture).permit(:filepath, :date, :couple)
  end
end
