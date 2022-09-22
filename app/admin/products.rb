ActiveAdmin.register Product do 
  
  permit_params :image, :name, :old_price, :new_price, :description, :brand_name, :presence, :category

  form do |f|
    f.inputs do 
      f.input :image, as: :file
      f.input :name
      f.input :old_price
      f.input :new_price
      f.input :description
      f.input :brand_name
      f.input :presence
      f.input :category, collection: Product.categories.symbolize_keys.keys
    end
    f.actions
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
      row :presence
      row :category 
    end
  end

  sidebar 'Details', only: [:show, :edit] do
    attributes_table_for product do
      row :created_at
    end
  end

  index do
    selectable_column
    id_column
    column 'Image' do |product|
      image_tag product.image.variant(resize_to_limit: [200, nil]) if product.image.attached?
    end
    column :name
    column :old_price
    column :new_price
    column :description
    column :brand_name
    column :presence
    column :category 
    actions
  end
end
