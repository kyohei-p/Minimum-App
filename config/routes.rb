Rails.application.routes.draw do

  root to: "samples#index"

  resources :samples
end