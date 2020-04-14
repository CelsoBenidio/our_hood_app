class CreateCategoryProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :category_products do |t|
      t.references :product, foreign_key: true
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
