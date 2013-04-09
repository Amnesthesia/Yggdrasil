class User < ActiveRecord::Base
  attr_accessible :city, :country, :email, :first_name, :gender, :gravatar_url, :last_name, :password_digest, :role, :username, :zipcode
end
