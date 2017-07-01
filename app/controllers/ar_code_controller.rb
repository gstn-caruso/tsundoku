class ArCodeController < ApplicationController
  IMAGE_NOT_EXISTS = 'You are trying to encode a not existing image'
  def show
    @id = params[:id]
    unless Image.exists? @id
      redirect_to images_path, error: IMAGE_NOT_EXISTS
    end
    image_path = "public/qr_codes/#{@id}.png"

    Qr4r::encode(@id, image_path, pixel_size: 10)

    @ar_url = root_url + "qr_codes/#{@id}.png"
  end
end