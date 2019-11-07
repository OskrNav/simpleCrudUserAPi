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

    uri = URI.parse("http://localhost:3000/api/v1/authenticate")

    header = {'Content-Type': 'text/json'}
    user = {
                   email: email,
                   password: password
            }
            

    http = Net::HTTP.new(uri.host, uri.port)
    request = Net::HTTP::Post.new(uri.request_uri, header)
    request.body = user.to_json

    response = http.request(request)
    render plain:response
  end




end
