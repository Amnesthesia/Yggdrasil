class User < ActiveRecord::Base
  belongs_to :role
  attr_accessible :city, :country, :email, :first_name, :gender, :gravatar_url, :last_name, :password_digest, :username, :zipcode
end
