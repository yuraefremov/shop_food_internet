class AddCategoryIdToDishes < ActiveRecord::Migration[5.2]
  def change
    add_column :dishes, :category_id, :integer
    add_index :dishes, :category_id
  end
end
