Rails.application.routes.draw do
  resources :leases, only: [:destroy, :create]
  resources :tenants
  resources :aparments
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
