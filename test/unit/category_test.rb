# == Schema Information
#
# Table name: categories
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  description :text
#  img_path    :string(255)
#  points      :integer
#  category_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class CategoryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
