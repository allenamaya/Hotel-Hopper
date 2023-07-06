Rails.application.routes.draw do
  resources :rooms, only: [:index, :show, :update]
  resources :customers, only: [:index, :show, :create, :destroy, :update]
  resources :hotels, only: [:index, :show]

  get "/occupied", to: "rooms#occupied"
  get "/unoccupied", to: "rooms#unoccupied"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
end
