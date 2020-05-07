Rails.application.routes.draw do
  get 'cities/show'
  get '/', to: 'landing_page#welcome'
  get 'welcome', to: 'landing_page#welcome'
  get 'welcome/:user', to: 'landing_page#welcome'
  get 'users/:id', to: 'users#show'
  get 'team', to: 'static_pages#team'
  get 'contact', to: 'static_pages#contact'
  resources :gossips, only: [:show, :new, :create, :edit, :update, :destroy]
  resources :cities, only: [:show]
end
