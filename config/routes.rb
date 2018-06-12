Rails.application.routes.draw do

 resources :boats  do
  resources :bookings, except: [:show, :update, :edit]
 end
  get "my_trips", to: 'dashboard#my_trips'
  get "my_boats", to: 'dashboard#my_boats'

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end





