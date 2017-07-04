require 'rmagick'

class ImagesController < ApplicationController

  def index
    @images = Image.all
  end
  
  def new
    @image = Image.new
  end

  def show
    @image = Image.find(params[:id])
  end

  def create
    @image = Image.new(image_params)

    if @image.save
      redirect_to show_image_path(image_id: @image.id)
    else
      render :new
    end
  end

  private

  def image_params
    params.require(:image).permit(:name, :image)
  end
end
