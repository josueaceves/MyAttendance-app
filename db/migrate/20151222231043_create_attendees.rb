class CreateAttendees < ActiveRecord::Migration
  def change
    create_table :attendees do |t|
      t.integer :attendance_id
      t.integer :choir_member_id
      t.integer :points

      t.timestamps null: false
    end
  end
end
