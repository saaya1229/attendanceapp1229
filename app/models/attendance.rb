class Attendance < ApplicationRecord
  validates :start_time, presence: true
end
