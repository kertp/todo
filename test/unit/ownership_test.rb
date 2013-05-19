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

require 'test_helper'

class OwnershipTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
