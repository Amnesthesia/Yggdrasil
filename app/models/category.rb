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

class Category < ActiveRecord::Base
  belongs_to :category
  attr_accessible :description, :img_path, :points, :title
end
