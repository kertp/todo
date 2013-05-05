class User < ActiveRecord::Base
  attr_accessible :email, :name
  has_many :ownerships, :dependent => :destroy
  has_many :projects, :through => :ownerships
  has_many :comments, :dependent => :destroy
end
