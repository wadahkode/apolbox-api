class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :id_unique
      t.string :username
      t.string :email
      t.string :email_verification
      t.string :password
      t.string :password_verification
      t.boolean :remember_me
      t.timestamp :status_online

      t.timestamps
    end
    add_index :users, :id_unique, unique: true
  end
end
