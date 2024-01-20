# == Schema Information
#
# Table name: profiles
#
#  id         :bigint           not null, primary key
#  birthday   :date
#  job        :integer
#  nickname   :string
#  subscribed :boolean          default(FALSE)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint           not null
#
# Indexes
#
#  index_profiles_on_user_id  (user_id)
#
require 'test_helper'

class ProfileTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
