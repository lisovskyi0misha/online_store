class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string 'name'
      t.float 'old_price'
      t.float 'new_price'
      t.text 'description'
      t.string 'brand_name'
      t.float 'quantity'
      t.string 'quantity_units'

      t.timestamps
    end
  end
end
