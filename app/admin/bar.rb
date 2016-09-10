ActiveAdmin.register Bar do
  permit_params :name, :address
  actions :all, :except => [:destroy]

  filter :city, label: "Ville"
  filter :name, label: "Nom"
  filter :formatted_address, label: "Addresse"

  member_action :custom_delete, method: :post do
    resource.destroy!
    redirect_to bistrot_bars_path
  end


  action_item :custom_delete, only: [:show] do
    link_to 'Delete', custom_delete_bistrot_bar_path(resource), method: :post
  end

  index do
    column :name
    column :formatted_address
    column :price
    column :isCb
    column :has_happy
  end

  form do |f|
  	f.inputs do
      f.input :name
      f.input :address
    end
    f.actions
  end
end
