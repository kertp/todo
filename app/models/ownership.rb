# == Schema Information
#
# Table name: ownerships
#
#  id         :integer          not null, primary key
#  owner      :boolean
#  project_id :integer
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Ownership < ActiveRecord::Base
  belongs_to :project
  belongs_to :user
  # attr_accessible :title, :body
end
