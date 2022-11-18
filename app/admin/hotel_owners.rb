ActiveAdmin.register HotelOwner do
  permit_params :active, :first_name, :last_name, :email, :password, :password_confirmation

  index do
    selectable_column
    id_column
    column :email
    column :first_name
    column :last_name
    column :active
    column :created_at
    actions
  end

  filter :email
  filter :created_at

  form do |f|
    f.inputs do
      f.input :first_name
      f.input :last_name
      f.input :email
      f.input :password
      f.input :password_confirmation
      f.input :active
    end
    f.actions
  end

end
