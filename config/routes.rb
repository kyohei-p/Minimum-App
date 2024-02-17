Rails.application.routes.draw do
  get 'login' => 'sessions#new', as: :login
  post 'login' => "sessions#create"
  delete 'logout' => 'sessions#destroy', as: :logout

  root to: "samples#index"

  resources :users, except: [:index]

end
