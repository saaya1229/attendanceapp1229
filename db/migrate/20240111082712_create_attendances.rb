class CreateAttendances < ActiveRecord::Migration[6.0]
  def change
    create_table :attendances do |t|
      t.references :user, null: false
      t.text :content
      t.datetime :start_time, null: false
      t.datetime :end_time
      t.integer :break_time
      t.timestamps
    end
  end
end
