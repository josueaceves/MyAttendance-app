class CreateChoirMembers < ActiveRecord::Migration
  def change
    create_table :choir_members do |t|
      t.string :first_name
      t.string :last_name
      t.string :voice
      t.string :side

      t.timestamps null: false
    end
  end
end
