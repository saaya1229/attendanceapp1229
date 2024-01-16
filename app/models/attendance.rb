# == Schema Information
#
# Table name: attendances
#
#  id         :integer          not null, primary key
#  break_time :integer
#  content    :text
#  end_time   :datetime
#  start_time :datetime
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#
# Indexes
#
#  index_attendances_on_user_id  (user_id)
#
class Attendance < ApplicationRecord
  validates :start_time, presence: true

  def display_created_at
    I18n.l(self.created_at, format: :default)
  end
end
