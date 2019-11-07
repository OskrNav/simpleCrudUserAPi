require 'net/http'
require 'json'

class AdminController < ApplicationController
  
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

    options = ["email":email , "password":password]
    token = HTTParty.post("/api/v1/authenticate" , )

  end




end
