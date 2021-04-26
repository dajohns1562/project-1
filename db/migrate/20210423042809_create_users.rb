class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.text :email
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.string "password_digest"
      t.boolean "admin", default: false
    end
  end
end
