require 'rmagick'

class ImagesController < ApplicationController

  SAVE_QR_REMINDER = 'Print the ar code or download it to use it later'

  def index
    @images = Image.all
  end
  
  def new
    @image = Image.new
  end

  def show
    @image = Image.find params[:id]
  end

  def create
    @image = Image.new image_params

    if @image.save
      redirect_to ar_code_path(id: @image.id), notice: SAVE_QR_REMINDER
    else
      render :new
    end
  end

  def qr
    @qr_url = root_url + "qr_codes/hiro#{params[:id]}.png"
  end

  private

  def image_params
    params.require(:image).permit(:name, :image)
  end
end
