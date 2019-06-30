Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :practiciens
  resources :agendas 
  get '/quisommesnous', to: 'pages#quisommesnous', as: :quisommesnous
  get '/actes', to: 'pages#actes', as: :actes
  get '/contact', to: 'pages#contact', as: :contact
  get '/home', to: 'pages#home', as: :home

end
