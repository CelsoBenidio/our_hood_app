class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :price
      t.text :description
      t.references :store, null: false, foreign_key: true

      t.timestamps
    end
  end
end
