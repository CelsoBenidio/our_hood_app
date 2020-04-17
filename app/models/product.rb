class Product < ApplicationRecord
  belongs_to :store
  has_many :category_products, dependent: :destroy
  has_many :categories, through: :category_products
  validates :name, presence: true, uniqueness: true
  has_one_attached :photo
  include PgSearch::Model
  multisearchable against: [:name, :description]
end


PgSearch::Multisearch.rebuild(Product)
PgSearch::Multisearch.rebuild(Store)

results = PgSearch.multisearch('paris texas')
