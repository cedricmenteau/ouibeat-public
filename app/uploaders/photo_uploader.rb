# encoding: utf-8

class PictureUploader < CarrierWave::Uploader::Base

  include Cloudinary::CarrierWave

end
