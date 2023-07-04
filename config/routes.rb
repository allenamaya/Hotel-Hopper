Rails.application.routes.draw do
  resources :rooms, only: [:index, :show, :update]
  resources :customers, only: [:index, :show, :create]
  resources :hotels, only: [:index, :show]

  get "/occupied", to: "rooms#occupied"
  get "/unoccupied", to: "rooms#unoccupied"

end
