class PicturesController < ApplicationController

  def index
    @pictures = Picture.all_asc
    @display_mode = ["asc", "all"]
  end

  def descending
    @pictures = Picture.all_desc
    @display_mode = ["desc", "all"]

    render :index
  end

  def ascending_couple
    @pictures = Picture.all_asc_couple
    @display_mode = ["asc", "couple"]

    render :index
  end

  def descending_couple
    @pictures = Picture.all_desc_couple
    @display_mode = ["desc", "couple"]

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
