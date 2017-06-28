class ArCodeController < ApplicationController

  def show

    @id = params[:id]

    image_path = "public/qr_codes/#{@id}.png"

    Qr4r::encode(@id, image_path, pixel_size: 10)

    @ar_url = root_url + "qr_codes/#{@id}.png"
  end

end
