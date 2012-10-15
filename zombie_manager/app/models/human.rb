class Human < ActiveRecord::Base
  attr_accessible :blood_type, :height, :weight, :picture, :picture_cache
  mount_uploader :picture, PictureUploader
end
