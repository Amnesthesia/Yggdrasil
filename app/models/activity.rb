class Activity < ActiveRecord::Base
  belongs_to :user
  belongs_to :category
  belongs_to :post
  attr_accessible :action
end
