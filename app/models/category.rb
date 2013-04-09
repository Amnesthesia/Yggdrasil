class Category < ActiveRecord::Base
  belongs_to :category
  attr_accessible :description, :img_path, :points, :title
end
