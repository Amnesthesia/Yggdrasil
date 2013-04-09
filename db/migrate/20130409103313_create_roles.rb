class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      t.string :title
      t.string :description
      t.integer :permission_level
      t.string :img_path

      t.timestamps
    end
  end
end
