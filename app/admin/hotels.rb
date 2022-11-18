ActiveAdmin.register Hotel do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
   permit_params :name, :address, :email, :contact_no, :active, :hotel_owner_id
  #
  # or
  #
  # permit_params do
    # permitted = [:name, :address, :email, :contact_no, :active]
    # permitted << :other if params[:action] == 'create' && current_user.admin?
  # permitted
  # end
  index do
    selectable_column
    id_column
    column :name
    column :address
    column :email
    column :contact_no
    column :active
    column :hotel_owner_id
    actions
  end

  filter :email
  filter :created_at

  form do |f|
    f.inputs do
      f.input :name
      f.input :address
      f.input :email
      f.input :contact_no
      f.input :active
      f.input :hotel_owner_id
      
    end
    f.actions
  end

  
end
