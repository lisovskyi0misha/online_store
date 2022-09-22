class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string 'name'
      t.integer 'old_price'
      t.integer 'new_price'
      t.text 'description'
      t.string 'brand_name'
      t.boolean 'presence'

      t.timestamps
    end
  end
end
