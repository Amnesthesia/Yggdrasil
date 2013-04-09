# == Schema Information
#
# Table name: roles
#
#  id               :integer          not null, primary key
#  title            :string(255)
#  description      :string(255)
#  permission_level :integer
#  img_path         :string(255)
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

require 'test_helper'

class RoleTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
