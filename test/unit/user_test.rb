# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  username        :string(255)
#  password_digest :string(255)
#  email           :string(255)
#  first_name      :string(255)
#  last_name       :string(255)
#  gender          :integer
#  city            :string(255)
#  zipcode         :string(255)
#  country         :string(255)
#  gravatar_url    :string(255)
#  role_id         :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
