# == Schema Information
#
# Table name: pictures
#
#  id         :integer          not null, primary key
#  filepath   :string           not null
#  date       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Picture < ActiveRecord::Base
  validates :filepath, :date, presence: true
  validates :filepath, uniqueness: true
end
