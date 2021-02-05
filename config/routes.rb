Rails.application.routes.draw do
  # get 'sessions/new'
  # get 'sessions/create'
  # get 'sessions/destroy'
  resources :users
  root 'pages#home'
  get '/signup', to: 'users#new', as: 'signup'
  get '/signin', to: 'sessions#new', as: 'signin' 
  post '/signin', to: 'sessions#create', as: 'create_session'
  get '/signout', to: 'sessions#destroy', as: 'signout'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
