ActiveAdmin.register Product do 
  
  permit_params :image, :name, :old_price, :new_price, :description, :brand_name, :presence, :category

  form do |f|
    f.inputs do 
      f.input :image, as: :file
      f.input :name
      f.input :old_price
      f.input :new_price
      f.input :description
      f.input :brand_name, collection: Product.brand_names.symbolize_keys.keys
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
      image_tag product.image.variant(resize_to_limit: [200, 100]) if product.image.attached?
    end
    column :name
    column :old_price
    column :new_price
    column 'description' do |product|
      product.description.slice(0, 300)
    end
    column :brand_name
    column :presence
    column :category 
    actions
  end

  sidebar "Poster", only: [:show] do
    ul do
      li link_to "Posters",  admin_product_posters_path(resource)
    end
  end

  filter :category, as: :select, collection: Product.categories
  filter :brand_name, as: :select, collection: Product.brand_names
  filter :new_price
  filter :old_price
  filter :presence
end
