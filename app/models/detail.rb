# == Schema Information
#
# Table name: details
#
#  id         :integer          not null, primary key
#  title      :string
#  text       :text
#  project_id :integer
#  link       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  position   :integer
#

class Detail < ActiveRecord::Base
  belongs_to :project

  has_attachments :pictures, maximum: 3
end
