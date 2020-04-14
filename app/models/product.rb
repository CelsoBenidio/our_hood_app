class Product < ApplicationRecord
  belongs_to :store
  has_many :category_products
  has_many :categories, through: :category_products
  validates :name, presence: true, uniqueness: true
end
