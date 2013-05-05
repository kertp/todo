class Task < ActiveRecord::Base
  attr_accessible :closed, :content, :deadline, :name
  has_many :comments, :as => :commentable, :dependent => :destroy
  belongs_to :project
end
