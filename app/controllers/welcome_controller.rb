class WelcomeController < ApplicationController
  def index
    @image_url = find_image_from_url.image_url
  end

  private

  def welcome_params
    params.require(:image_id)
  end

  def find_image_from_url
    Image.find(params[:image_id])
  rescue ActiveRecord::RecordNotFound
    Image.last
  end
end
