class SessionController < ApplicationController
  def new
  end

  def create
    @user = User.find_by :email => params[:email]
    if @user.present? && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to root_path
    else
      redirect_to login_path
  end
end

#is it logout or delete the login details?
  def destroy
    session[:user_id] = nil
    redirect_to login_path
  end
end
