# == Schema Information
#
# Table name: activities
#
#  id          :integer          not null, primary key
#  user_id     :integer
#  category_id :integer
#  post_id     :integer
#  action      :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class ActivityTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
