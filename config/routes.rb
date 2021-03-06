Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #resources :ingredients
  resources :doses, only: [:destroy]

  resources :cocktails, only: [:index, :new, :create, :show] do
    resources :doses, only: [ :new, :create ]
  end

end
