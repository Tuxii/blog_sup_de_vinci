class SessionsController < ApplicationController
  before_action :verify_logged_in, only: %i[new create]

  def new
  end

  def create
    user = User.find_by(username: params[:username])
    if user&.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_path, notice: "Successfully logged in"
    else
      flash[:alert] = "Invalid username or password"
      render :new, status: :unauthorized
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url
  end

  private

  def verify_logged_in
    redirect_back_or_to(root_path) if logged_in?
  end
end
