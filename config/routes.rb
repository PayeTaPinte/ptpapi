Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :bars, except: [:new, :edit]

  match "/bistrot/bars/:id" => 'bistrot/bars#update', via: :post
end
