class Task < ActiveRecord::Base
  attr_accessible :closed, :content, :deadline, :name
end
