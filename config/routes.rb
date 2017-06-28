Rails.application.routes.draw do
  resources :product_modules
  resources :invoices
  resources :fees
  resources :adjustments
  resources :module_types
  resources :fee_types
  resources :services
  resources :contacts
  resources :quotes
  resources :agreements
  resources :agreement_types
  resources :pos
  resources :kms_versions
  resources :customers
  resources :posts
  resources :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
