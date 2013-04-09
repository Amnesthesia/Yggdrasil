class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.reference :user
      t.reference :category
      t.reference :post
      t.string :action

      t.timestamps
    end
  end
end
