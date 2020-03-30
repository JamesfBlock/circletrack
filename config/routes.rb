Rails.application.routes.draw do
  devise_for :users

  # ***********PAGES ROUTES *********** #

  # root page defined below
  root to: 'pages#home'

  # Route to about page /about
  get 'about', to: 'pages#about'


  # ***********PACKAGE ROUTES *********** #

  # Route to packages page /packages
  get 'packages', to: 'packages#index'
  get "packages/:id", to: "packages#show", as: :package

end

