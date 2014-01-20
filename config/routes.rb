Blair::Application.routes.draw do


  resources :index
  get 'users/sign_in' => 'users#sign_in'
  resources :users

  root :to => "index#index"
  post "sessions/new"
  get "sessions/destroy"

end
