class ImageUploader < CarrierWave::Uploader::Base
  storage :file

  include Cloudinary::CarrierWave

  process convert: 'png'
  process tags: ['post_picture']

  version(:standard) { process resize_to_fill: [100, 150, :north] }
  version(:thumbnail) { resize_to_fit(50, 50) }
end
