class DeleteBrandNameFromProducts < ActiveRecord::Migration[7.0]
  def change
    remove_column :products, :brand_name
  end
end
