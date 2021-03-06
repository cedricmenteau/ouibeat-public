# == Schema Information
#
# Table name: details
#
#  id         :integer          not null, primary key
#  text       :text
#  project_id :integer
#  link       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  position   :integer
#

class Detail < ActiveRecord::Base
  belongs_to :project
  acts_as_list scope: :project_id

  has_attachments :pictures, maximum: 3

  default_scope { order('position ASC') }
end
