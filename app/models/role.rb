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

class Role < ActiveRecord::Base
  attr_accessible :description, :img_path, :permission_level, :title
end
