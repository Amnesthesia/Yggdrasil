class Post < ActiveRecord::Base
  attr_accessible :category, :content, :title, :user
end
