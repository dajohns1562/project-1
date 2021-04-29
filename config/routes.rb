Rails.application.routes.draw do

  get 'session/new'
  root :to => 'pages#home'

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  resources :users, :only => [:index, :new, :create, :update]

  get '/users/edit' => 'users#edit'

  resources :tweets, :only => [:new, :create]

  resources :relationships, :only => [:new, :create, :destroy]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
