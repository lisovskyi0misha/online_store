ActiveAdmin.register Brand do 

  permit_params :name, :image

  index do 
    id_column
    column 'Image' do |brand|
      image_tag brand.image.variant(resize_to_limit: [200, 100]) if brand.image.attached?
    end
    column :name
    actions
  end

  show do 
    attributes_table do 
      if brand.image.attached?
        row :image do
          image_tag brand.image.variant(resize_to_limit: [200, nil])
        end
      end
      row :name
      row :created_at
    end
  end

  form do |f|
    f.inputs do 
      f.input :image, as: :file
      f.input :name
    end
    f.actions
  end

  filter :name

end
