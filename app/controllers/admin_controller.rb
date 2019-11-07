require 'net/http'
require 'uri'
require 'json'

class AdminController < ApplicationController
  protect_from_forgery with: :null_session
  
  skip_before_action :authenticate_request
  
  layout "application", only: [:index]
  layout "login" , only:[:login]

  def login

  end

  def index
  end

  def validateUser


    email = params[:email]
    password = params[:password]

    options = { :body => 
         { :username => 'my',
           :password => 'password' 
        }
    }
    results = HTTParty.post("http://localhost:3000/api/v1/authenticate", options)

   
    render plain:results
  end




end
