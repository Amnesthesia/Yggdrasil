class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :title
      t.text :description
      t.string :img_path
      t.integer :points
      t.reference :category

      t.timestamps
    end
  end
end
