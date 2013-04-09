class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :title
      t.text :description
      t.string :img_path
      t.integer :points
      t.references :category

      t.timestamps
    end
    add_index :categories, :category_id
  end
end
