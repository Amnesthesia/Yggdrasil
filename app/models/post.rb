class Post < ActiveRecord::Base
  belongs_to :user
  belongs_to :category
  attr_accessible :content, :title
end
