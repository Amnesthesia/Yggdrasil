class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.reference :user
      t.reference :category
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
