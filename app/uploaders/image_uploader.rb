class ImageUploader < CarrierWave::Uploader::Base
  storage :file

  include Cloudinary::CarrierWave if Rails.env.production?

  process convert: 'png'
  process tags: ['post_picture']

  version(:standard) { process resize_to_fill: [300, 300, :north] }
end
