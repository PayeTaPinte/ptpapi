ActiveAdmin.register AdminUser do
  permit_params :email, :password, :password_confirmation
  actions :all, :except => [:destroy]

  member_action :custom_delete, method: :post do
    resource.destroy!
    redirect_to bistrot_admin_users_path
  end

  action_item :custom_delete, only: [:show] do
    link_to 'Delete', custom_delete_bistrot_admin_user_path(resource), method: :post
  end

  index do
    selectable_column
    id_column
    column :email
    column :current_sign_in_at
    column :sign_in_count
    column :created_at
    actions
  end

  filter :email
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at

  form do |f|
    f.inputs "Admin Details" do
      f.input :email
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end

end
