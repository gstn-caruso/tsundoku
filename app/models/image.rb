class Image < ApplicationRecord
  validates :name, :image, presence: true
  mount_uploader :image, ImageUploader
end
