Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'cocktails#home'
  resources :doses, only: [:destroy]
  resources :cocktails, only: [ :index, :new, :create, :show ] do
    resources :doses, only: [:new, :create]
  end
 
end
