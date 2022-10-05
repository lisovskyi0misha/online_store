class CreateProductBrands < ActiveRecord::Migration[7.0]
  def change
    create_table :product_brands do |t|
      t.timestamps
    end
  end
end
