Rails.application.routes.draw do
  #rails g resource Portfolio title:string subtitle:string ....
  resources :portfolios


  #get 'pages/about'
  get 'about-me', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  

  get 'home/about'

  get 'home/contact'
  
  root to: 'pages#home'   
  #Restfulルーティング
  resources :blogs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
