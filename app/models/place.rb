class Place < ApplicationRecord
  mount_uploader :photo, ImageUploader
end
