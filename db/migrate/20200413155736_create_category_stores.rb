class CreateCategoryStores < ActiveRecord::Migration[6.0]
  def change
    create_table :category_stores do |t|
      t.references :store, foreign_key: true
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
