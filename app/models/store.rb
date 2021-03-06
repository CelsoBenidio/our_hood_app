class Store < ApplicationRecord
  has_many :products, dependent: :destroy
  belongs_to :user
  validates :name, presence: true, uniqueness: true
  validates :address, presence: true, uniqueness: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  has_one_attached :photo
  include PgSearch::Model
  multisearchable against: [:name, :description, :address]
end
