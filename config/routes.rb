Rails.application.routes.draw do
  
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  get 'admin/login'
  get 'admin/index'

  root to:'admin#index'

  namespace :api  do
    api_version(:module => "V1", :path => {:value => "v1"}) do
      resources :users
      post 'authenticate', to: 'authentication#authenticate'
    end  
  end
  resources :items
  
end
