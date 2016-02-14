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

require 'test_helper'

class PictureTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
