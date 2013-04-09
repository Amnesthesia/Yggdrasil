# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  username        :string(255)
#  password_digest :string(255)
#  email           :string(255)
#  first_name      :string(255)
#  last_name       :string(255)
#  gender          :integer
#  city            :string(255)
#  zipcode         :string(255)
#  country         :string(255)
#  gravatar_url    :string(255)
#  role_id         :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ActiveRecord::Base
  belongs_to :role
  attr_accessible :city, :country, :email, :first_name, :gender, :gravatar_url, :last_name, :password, :password_confirmation, :password_digest, :username, :zipcode
  
  has_secure_password
  has_many :posts
  has_many :activities
  
  # Before user is saved, we better make sure his email is lowercase'd
  before_save { |user| user.email = email.downcase }
  
  # Lots of validation comes here!
  validates :first_name, presence: true
  validates :first_name, length: { maximum: 30 }
  
  validates :last_name, presence: true, length: { maximum: 40 }
  validates :username, presence: true, length: { maximum: 40 }
  
  validates :password, presence: true, 
                       length: { minimum: 8 }
  validates :password_confirmation, presence: true
  

  VALID_EMAIL = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, uniqueness: { case_sensitive: false }, 
                    presence: true, 
                    format: { with: VALID_EMAIL }, 
                    length: { maximum: 60 }
  
end
