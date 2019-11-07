class SessionsController < ApplicationController
  def create
    command = AuthenticateUser.call(session_params[:email], session_params[:password])

    # check command outcome
    if command.success?

      session[:user_token] = command.result.secret_token
      redirect_to root_path
    else
      flash.now[:alert] = t(command.errors.full_messages.to_sentence)
      render :new
    end
  end

  private

  def session_params
    params.require(:session).permit(:email, :password)
  end
end
