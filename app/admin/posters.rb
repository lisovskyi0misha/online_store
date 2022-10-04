ActiveAdmin.register Poster do 

  belongs_to :product
  navigation_menu :product

  permit_params :product_id, :image

  form do |f|
    f.inputs do 
      f.input :image, as: :file
    end
    f.actions
  end
end