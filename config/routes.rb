Rails.application.routes.draw do
  resources :wikis

  resources :charges, only: [:new, :create, :destroy]

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :wikis do
        resources :collaborators, only: [:index, :new, :create]
    end
    
  root 'welcome#index'

end
