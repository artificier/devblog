Rails.application.routes.draw do
  #rails g resource Portfolio title:string subtitle:string ....
  resources :portfolios
  get 'pages/home'

  get 'pages/about'

  get 'pages/contact'

  get 'home/about'

  get 'home/contact'

  #Restfulルーティング
  resources :blogs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
