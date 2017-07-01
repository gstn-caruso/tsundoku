class ArCodeController < ApplicationController
  IMAGE_NOT_EXISTS = 'You are trying to encode a not existing image'
  QR_IMAGE_PATH = 'public/qr_codes/'

  def show
    id = params[:id]
    unless Image.exists? id
      redirect_to images_path, error: IMAGE_NOT_EXISTS
    end
    generate_qr_ar_image(id)

    @ar_url = root_url + "qr_codes/hiro#{id}.png"
  end

  def generate_qr_ar_image(image_id)
    image_path = "#{QR_IMAGE_PATH + image_id}.png"
    Qr4r::encode(@image.id.to_s, image_path, pixel_size: 20)

    #this will be the final image
    big_image = Magick::ImageList.new

    image_row = Magick::ImageList.new
    image_row.push(Magick::Image.read("#{QR_IMAGE_PATH + @image.id}.png").first)
    image_row.push(Magick::Image.read('app/assets/images/hiro.png').first)

    big_image.push(image_row.append(false))

    big_image.append(true).write("public/qr_codes/hiro#{image_id}.png")
  end

end