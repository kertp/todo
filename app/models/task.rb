# == Schema Information
#
# Table name: tasks
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  content    :text
#  deadline   :datetime
#  closed     :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Task < ActiveRecord::Base
  attr_accessible :closed, :content, :deadline, :name
  has_many :comments, :as => :commentable, :dependent => :destroy
  belongs_to :project
end
