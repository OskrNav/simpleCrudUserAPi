Rails.application.routes.draw do
  get 'user/index'
  resources :items
  post 'authenticate', to: 'authentication#authenticate'
end
