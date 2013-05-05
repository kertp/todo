class Project < ActiveRecord::Base
  attr_accessible :name
  has_many :tasks, :dependent => :destroy
  has_many :ownerships, :dependent => :destroy
  has_many :users, :through =>:ownerships
  has_many :comments, :as => :commentable, :dependent => :destroy
end
