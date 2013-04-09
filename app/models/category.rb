class Category < ActiveRecord::Base
  attr_accessible :category, :description, :img_path, :points, :title
end
