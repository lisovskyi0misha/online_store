class Product < ApplicationRecord
  has_one_attached :image
  validates_uniqueness_of :name
  enum category: [:phone, :headphones, :laptop, :smart_watch]
  enum brand_name: [:apple, :samsung]
end
