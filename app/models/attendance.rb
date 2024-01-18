# == Schema Information
#
# Table name: attendances
#
#  id         :integer          not null, primary key
#  break_time :integer
#  content    :text
#  end_time   :datetime
#  start_time :datetime         not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer          not null
#
# Indexes
#
#  index_attendances_on_user_id  (user_id)
#
class Attendance < ApplicationRecord
  has_one_attached :eyecatch

  validates :start_time, presence: true

  belongs_to :user

  def display_created_at
    I18n.l(self.created_at, format: :default)
  end

  def display_start_time
    I18n.l(self.start_time, format: :long)
  end

  def display_end_time
    return '----/--/-- --:--' unless end_time.present?
    I18n.l(self.end_time, format: :long)
  end

  def display_break_time
    return '0' unless break_time.present?
  end

  def author_name
    user.display_name
  end
end
