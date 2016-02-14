# == Schema Information
#
# Table name: pictures
#
#  id         :integer          not null, primary key
#  filepath   :string           not null
#  date       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  couple     :boolean          default(FALSE)
#

class Picture < ActiveRecord::Base
  validates :filepath, :date, presence: true
  validates :filepath, uniqueness: true

  def self.all_asc_couple
    pictures = Picture.where(couple: true)

    pictures.sort {|pic1, pic2| Date.parse(pic2.date) <=> Date.parse(pic1.date)}
  end

  def self.all_desc_couple
    pictures = Picture.where(couple: true)

    pictures.sort {|pic1, pic2| Date.parse(pic1.date) <=> Date.parse(pic2.date)}
  end

  def self.all_asc
    pictures = Picture.all

    pictures.sort {|pic1, pic2| Date.parse(pic2.date) <=> Date.parse(pic1.date)}
  end

  def self.all_desc
    pictures = Picture.all

    pictures.sort {|pic1, pic2| Date.parse(pic1.date) <=> Date.parse(pic2.date)}
  end

end
