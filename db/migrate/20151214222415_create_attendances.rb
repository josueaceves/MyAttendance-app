class CreateAttendances < ActiveRecord::Migration
  def change
    create_table :attendances do |t|
      t.references :user, index: true, foreign_key: true
      t.references :choir_member, index: true, foreign_key: true
      t.integer :points
      t.integer :choir_id

      t.timestamps null: false
    end
  end
end
