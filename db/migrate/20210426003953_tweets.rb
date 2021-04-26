class Tweets < ActiveRecord::Migration[5.2]
  def change
    create_table :tweets do |t|
      t.text :content
      t.integer :user_id
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
    end
  end
end
