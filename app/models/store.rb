class Store < ApplicationRecord
  has_many :products, dependent: :destroy
  validates :name, presence: true, uniqueness: true
  validates :address, presence: true, uniqueness: true
end
