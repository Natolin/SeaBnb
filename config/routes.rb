Rails.application.routes.draw do


 resources :boats  do
  resources :bookings, except: [:show]
 end

 root to: 'pages#home'

  get "dashboard", to: 'dashboards#dashboard'
  # get "my-boats", to: 'dashboards#my_boats'


  devise_for :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end





