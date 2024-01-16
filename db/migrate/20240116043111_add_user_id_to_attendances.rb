class AddUserIdToAttendances < ActiveRecord::Migration[6.0]
  def change
    add_reference :attendances, :user
  end
end
