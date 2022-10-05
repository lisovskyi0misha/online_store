class Brand < ApplicationRecord
  has_one :product_brand
  has_one :product, -> { distinct }, through: :product_brand, dependent: :destroy
  enum name: [:apple, :samsung]
  has_one_attached :image
  validates_uniqueness_of :name
end
