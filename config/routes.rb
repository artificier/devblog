Rails.application.routes.draw do
  #rails g resource Portfolio title:string subtitle:string ....
  #resources :portfolios
  resources :portfolios, except: [:show]
  get 'angular-items', to: 'portfolios#angular'
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'


  #get 'pages/about'
  get 'about-me', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  

  get 'home/about'

  get 'home/contact'
  
  root to: 'pages#home'   
  #Restfulルーティング
  resources :blogs do
    member do
	  get :toggle_status
	end
  end
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
