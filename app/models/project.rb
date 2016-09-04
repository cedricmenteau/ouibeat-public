# == Schema Information
#
# Table name: projects
#
#  id         :integer          not null, primary key
#  name       :string
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  date       :date
#  category   :string
#  active     :boolean          default(FALSE)
#

class Project < ActiveRecord::Base

  has_many :details

  has_attachment :picture
  has_attachment :logo

  validates :name, presence: true
  validates :title, presence: true
  validates :category, presence: true

  scope :active, -> { where(active: true) }
  scope :social_wall, -> { where(category: "Social Wall")}
  scope :borne, -> { where(category: "Borne")}
  scope :conception, -> { where(category: "Conception")}

end
