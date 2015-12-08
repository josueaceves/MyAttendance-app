class CreateChoirs < ActiveRecord::Migration
  def change
    create_table :choirs do |t|
      t.string :choir_name
      t.string :choir_location
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
