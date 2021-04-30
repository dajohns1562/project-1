Rails.application.routes.draw do

  get 'session/new'
  root :to => 'pages#home'

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  get '/users/edit' => 'users#edit'
  
  resources :users, :only => [:index, :new, :show, :create, :update]

  resources :tweets, :only => [:new, :create, :destroy]

  resources :relationships, :only => [:new, :create, :destroy]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
