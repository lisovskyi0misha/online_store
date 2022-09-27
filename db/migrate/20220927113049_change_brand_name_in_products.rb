class ChangeBrandNameInProducts < ActiveRecord::Migration[7.0]
  def up 
    change_column :products, :brand_name, 'integer USING CAST(brand_name AS integer)'
  end

  def down 
    change_column :products, :brand_name, 'string USING CAST(brand_name AS string)'
  end
end
