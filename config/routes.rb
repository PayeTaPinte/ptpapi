Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  resources :bars, except: [:new, :edit]

  devise_scope :admin_user do
  	match '/bistrot/logout' => 'active_admin/devise/sessions#destroy', via: :post
	end

  match '/bistrot/bars/:id' => 'bistrot/bars#update', via: :post
  match '/bistrot/admin_users/:id' => 'bistrot/admin_users#update', via: :post
end
