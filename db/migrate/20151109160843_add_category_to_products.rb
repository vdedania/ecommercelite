class AddCategoryToProducts < ActiveRecord::Migration
  def change
    category = Category.create! name: 'No Category'
    add_reference :products, :category, index: true, foreign_key: true, default: category.id
  end
end
