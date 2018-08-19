Rails.application.routes.draw do
  root 'sites#home'
  
  devise_for :users, :controllers => {
    :registrations => "registrations"
  }
  resources :users, only: [:show, :index, :destroy]
  resources :microposts, only: [:create, :destroy]

  get '/about', to: 'sites#about', as: :onodera
 # match '/about',  to: 'sites#about', via: 'get'
end