class User < ActiveRecord::Base
  attr_accessible :login, :password, :password_confirmation
  has_secure_password
  validates_presence_of :login, :password, :on => :create  
  
  has_many :topics, :dependent => :destroy
  has_many :posts, :dependent => :destroy
end
