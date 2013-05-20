# == Schema Information
#
# Table name: projects
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  description :text
#

class Project < ActiveRecord::Base
  attr_accessible :name, :description
  has_many :tasks, :dependent => :destroy
  has_many :ownerships, :dependent => :destroy
  has_many :users, :through =>:ownerships
  has_many :comments, :as => :commentable, :dependent => :destroy
end
