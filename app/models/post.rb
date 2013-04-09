# == Schema Information
#
# Table name: posts
#
#  id          :integer          not null, primary key
#  user_id     :integer
#  category_id :integer
#  title       :string(255)
#  content     :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Post < ActiveRecord::Base
  belongs_to :user
  belongs_to :category
  attr_accessible :content, :title
end
