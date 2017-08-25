class SessionController < ApplicationController
  def new
  end

  def create
    user = User.find_by :email => params[:email]
    if user.present? && user.authenticate(params[:password])
      redirect_to root_path
    else
      redirect_to login_path
    end
  end
end