class CreateAttendances < ActiveRecord::Migration
  def change
    create_table :attendances do |t|
      t.integer :choir_id
      t.string :prayer

      t.timestamps null: false
    end
  end
end
