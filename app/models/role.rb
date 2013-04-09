class Role < ActiveRecord::Base
  attr_accessible :description, :img_path, :permission_level, :title
end
