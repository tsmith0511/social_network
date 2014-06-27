class ProfilesController < ApplicationController
  def new

  end

  def create
    @profile = Profile.new
    @profile.firstname = params[:profile][:firstname]
    @profile.lastname = params[:profile][:lastname]
    @profile.age = params[:profile][:age]
    @profile.gender = params[:profile][:gender]
    @profile.image = params[:profile][:image]
    @profile.user = @current_user
    @profile.save!
    redirect_to "/profile/#{@profile.id}"
  end

  def update
    profile = Profile.find(params[:id])
    profile.firstname = params[:profile][:firstname]
    profile.lastname = params[:profile][:lastname]
    profile.age = params[:profile][:age]
    profile.gender = params[:profile][:gender]
    profile.save!
    redirect_to '/'
  end

  def show
    @profile = Profile.find(params[:id])
  end

  def showall
    @profile = Profile.all
  end

  def edit

  end
  
end
