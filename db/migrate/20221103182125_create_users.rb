class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :email_verify
      t.string :password
      t.string :password_verify
      t.boolean :remember_me

      t.timestamps
    end
  end
end
