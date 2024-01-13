class Attendance < ApplicationRecord
  validates :start_time, presence: true

  def display_created_at
    I18n.l(self.created_at, format: :default)
  end
end
