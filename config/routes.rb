Rails.application.routes.draw do
  devise_for :users do
    resources :products
  end
  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'products#index'
end
