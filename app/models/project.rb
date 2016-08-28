# == Schema Information
#
# Table name: projects
#
#  id         :integer          not null, primary key
#  name       :string
#  title      :string
#  sub_title  :string
#  text       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  date       :date
#  category   :string
#

class Project < ActiveRecord::Base

  has_attachments :pictures, maximum: 10
  has_attachment :logo

end
