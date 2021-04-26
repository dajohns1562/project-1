Rails.application.routes.draw do

  get 'session/new'
  root :to => 'pages#home'

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  resources :users, :only => [:index, :new, :create]

  resources :tweets, :only => [:new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
