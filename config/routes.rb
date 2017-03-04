Rails.application.routes.draw do
  get 'charges/create'

  get 'charges_controller/create'

  resources :wikis

  resources :charges, only: [:new, :create]

#  get 'welcome/index'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'welcome#index'

end
