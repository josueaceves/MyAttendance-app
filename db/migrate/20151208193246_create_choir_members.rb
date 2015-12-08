class CreateChoirMembers < ActiveRecord::Migration
  def change
    create_table :choir_members do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :voice, null: false
      t.string :side, null: false
      t.integer :choir_id

      t.timestamps null: false
    end
  end
end
