Rails.application.routes.draw do
  
  namespace :api , :path => "", :constraints => {:subdomain => "api"} do
    api_version(:module => "V1", :path => {:value => "v1"}) do
      resources :users
      post 'authenticate', to: 'authentication#authenticate'
    end  
  end
  resources :items
  
end
