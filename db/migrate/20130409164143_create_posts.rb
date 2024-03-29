class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.references :user
      t.references :category
      t.string :title
      t.text :content

      t.timestamps
    end
    add_index :posts, :user_id
    add_index :posts, :category_id
  end
end
