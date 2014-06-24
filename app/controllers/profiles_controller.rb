class ProfilesController < ApplicationController
  def new

  end

  def create
    user = User.new
    user.firstname = params[:user][:firstname]
    user.lastname = params[:user][:lastname]
    user.email = params[:user][:age]
    user.password = params[:user][:gender]
    user.save!
    session[:user_id] = user.id.to_s
    redirect_to '/'
  end

  def update
    user = User.find(params[:id])
    user.firstname = params[:user][:firstname]
    user.lastname = params[:user][:lastname]
    user.email = params[:user][:age]
    user.password = params[:user][:gender]
    user.save!
    redirect_to '/'
  end
  
end
