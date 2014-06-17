class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.where(email: params[:email]).first
    if user && user.authenticate(params[:password])
      flash[:notice] = "Logged in!"
      session[:user_id] = user.id.to_s
      redirect_to '/'
    else
      flash[:notice] = "Invalid email or password"
      redirect_to '/login'
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:notice] = "Logged out!"
    # alternatively: session.destroy
    redirect_to '/'
  end
end