Rails.application.routes.draw do
  devise_for :users
  # root page defined below
  root to: 'pages#home'

  #Any other routes directing to views go below:

  # Route to about page /about
  get 'about', to: 'pages#about'



  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
