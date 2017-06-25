class ImagesController < ApplicationController

  SAVE_QR_REMINDER = 'Print the qr code or download it to use it later'

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
      image_path = "public/qr_codes/#{@image.id}.png"
      Qr4r::encode(@image.id.to_s, image_path, pixel_size: 10)

      redirect_to "/qr/#{@image.id}", notice: SAVE_QR_REMINDER
    else
      render :new
    end
  end

  def qr
    @qr_url = root_url + "qr_codes/#{params[:id]}.png"
  end

  private

  def image_params
    params.require(:image).permit(:name, :image)
  end
end
