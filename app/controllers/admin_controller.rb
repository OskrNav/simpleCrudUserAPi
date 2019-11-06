class AdminController < ApplicationController
  
  skip_before_action :authenticate_request
  
  def login

  end

  def index
  end
end
