class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.string :email
      t.string :first_name
      t.string :last_name
      t.integer :gender
      t.string :city
      t.string :zipcode
      t.string :country
      t.string :gravatar_url
      t.references :role

      t.timestamps
    end
    add_index :users, :role_id
  end
end
