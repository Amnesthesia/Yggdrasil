class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.references :user
      t.references :category
      t.references :post
      t.string :action

      t.timestamps
    end
    add_index :activities, :user_id
    add_index :activities, :category_id
    add_index :activities, :post_id
  end
end
