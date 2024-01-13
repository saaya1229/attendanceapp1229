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
#
class Attendance < ApplicationRecord
  validates :start_time, presence: true

  def display_created_at
    I18n.l(self.created_at, format: :default)
  end
end
