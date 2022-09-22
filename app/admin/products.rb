ActiveAdmin.register Product do 
  
  permit_params :image, :name, :old_price, :new_price, :description, :brand_name, :quantity, :quantity_units

  form do |f|
    inputs do 
      input :image, as: :file
      input :name
      input :old_price
      input :new_price
      input :description
      input :brand_name
      input :quantity
      input :quantity_units
    end
  end

  show do 
    attributes_table do 
      if product.image.attached?
        row :image do
          image_tag product.image.variant(resize_to_limit: [200, nil])
        end
      end
      row :name
      row :old_price
      row :new_price
      row :description
      row :brand_name
      row :quantity
      row :quantity_units
    end
  end

  sidebar 'Details', only: [:show, :edit] do
    attributes_table_for product do
      row :created_at
    end
  end
end