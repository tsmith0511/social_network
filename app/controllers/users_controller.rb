class UsersController < ApplicationController
  def new

  end

  def create
    user = User.new
    user.username = params[:user][:username]
    user.email = params[:user][:email]
    user.password = params[:user][:password]
    user.password_confirmation = params[:user][:password_confirmation]
    user.save!
    session[:user_id] = user.id.to_s
    redirect_to '/profile'
  end

  def show
    @user = User.find(params[:id])
  end

  def update
    user = User.find(params[:id])
    user.firstname = params[:user][:firstname]
    user.lastname = params[:user][:lastname]
    user.username = params[:user][:username]
    user.email = params[:user][:email]
    user.password = params[:user][:password]
    user.password_confirmation = params[:user][:password_confirmation]
    user.save!
    redirect_to '/'
  end

  def add_friend
    @current_user.push(friends: params[:id])
    redirect_to "/profile/#{@current_user.id}"
  end
  
end
