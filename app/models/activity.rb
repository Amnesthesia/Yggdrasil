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

class Activity < ActiveRecord::Base
  belongs_to :user
  belongs_to :category
  belongs_to :post
  attr_accessible :action
end
