class AddProductBrandToBrandsAndProducts < ActiveRecord::Migration[7.0]
  def change
    add_reference :product_brands, :brand, foreign_key: true, null: false
    add_reference :product_brands, :product, foreign_key: true, null: false
  end
end
