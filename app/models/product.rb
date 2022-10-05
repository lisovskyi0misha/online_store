class Product < ApplicationRecord
  has_one :product_brand
  has_one :brand, -> { distinct }, through: :product_brand, dependent: :destroy
  accepts_nested_attributes_for :product_brand
  has_one_attached :image
  has_many :posters
  validates_uniqueness_of :name
  enum category: [:phone, :headphones, :laptop, :smart_watch]
end
