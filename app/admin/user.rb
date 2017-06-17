ActiveAdmin.register User do

  index do
    selectable_column
    column :id
    column :email
    column :provider
    column :uid
    column :first_name
    column :last_name
    column :address
    column :born_at
    column :photo
    column :role
    actions
  end

  show do
    attributes_table do
      row :id
      row :email
      row :provider
      row :uid
      row :first_name
      row :last_name
      row :address
      row :born_at
      row :photo do |user|
        cl_image_tag user.photo&.path, width: 256, height: 256, crop: :fill
      end
      row :role
    end
  end

  form do |f|
    f.inputs 'Identity' do
      f.input :first_name
      f.input :last_name
      f.input :address
      f.input :born_at
      f.input :photo, as: :formtastic_attachinary
    end
    f.inputs 'Admin' do
      f.input :role
    end
    f.actions
  end

  permit_params :first_name, :last_name, :address, :born_at, :photo, :role
end
