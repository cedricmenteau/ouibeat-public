# == Schema Information
#
# Table name: logos
#
#  id         :integer          not null, primary key
#  name       :string
#  position   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  link       :string
#

class Logo < ActiveRecord::Base
  # mount_uploader :picture, PictureUploader
  has_attachment :picture
end
