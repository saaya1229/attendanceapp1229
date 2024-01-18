# == Schema Information
#
# Table name: attendances
#
#  id         :bigint           not null, primary key
#  break_time :integer
#  content    :text
#  end_time   :datetime
#  start_time :datetime         not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint           not null
#
# Indexes
#
#  index_attendances_on_user_id  (user_id)
#
require 'test_helper'

class AttendanceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
