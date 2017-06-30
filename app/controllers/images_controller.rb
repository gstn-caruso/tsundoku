require 'RMagick'

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
      generate_qr_ar_image(@image.id)

      redirect_to "/qr/#{@image.id}", notice: SAVE_QR_REMINDER
    else
      render :new
    end
  end

  def generate_qr_ar_image(image_id)
    image_path = "public/qr_codes/#{image_id}.png"
    Qr4r::encode(@image.id.to_s, image_path, pixel_size: 20)

    #this will be the final image
    big_image = Magick::ImageList.new

    image_row = Magick::ImageList.new
    image_row.push(Magick::Image.read("public/qr_codes/#{@image.id}.png").first)
    image_row.push(Magick::Image.read('app/assets/images/hiro.png').first)

    big_image.push(image_row.append(false))

    big_image.append(true).write("public/qr_codes/hiro#{image_id}.png")
  end

  def qr
    @qr_url = root_url + "qr_codes/hiro#{params[:id]}.png"
  end

  private

  def image_params
    params.require(:image).permit(:name, :image)
  end
end
