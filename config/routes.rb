Rails.application.routes.draw do
  devise_for :users
  get 'pages/aboutus'
  get 'pages/actes'
  get 'actes/index'
  get 'pages/conception'
  get 'pages/education'
  get 'pages/groupe_aide'
  get 'pages/aide_individuelle'
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :practiciens
  resources :agendas
end
