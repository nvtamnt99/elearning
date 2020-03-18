class SessionsController < ApplicationController
  def new; end

  def create
    user = User.find_by email: params[:session][:email].downcase
    if user&.authenticate(params[:session][:password])
      flash[:success] = "login success"
      log_in user
      redirect_to root_path
    else
      flash[:danger] = "In Invalid email/password combination"
      render :new
    end
  end
end
