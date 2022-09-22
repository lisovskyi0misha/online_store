class Product < ApplicationRecord
  has_one_attached :image
  enum category: [:phone, :headphones, :laptop, :smart_watch]
end
