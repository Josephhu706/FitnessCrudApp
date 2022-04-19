class UsersController < ApplicationController
  before_action :check_for_admin, :only => [:index] #this means if you're not logged in you can't get to the index page
 
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new user_params 
    if @user.save 
      #new session created when a user signs up
      session[:user_id] = @user.id
      #thank you message to be flashed when a user signs up
      flash[:message] = "Thank you for signing up!"
      redirect_to root_path 
    else
      render :new # Show the form again so they can try again.
      #we send them back to :new instead of sending back to the home page so they don't have to reenter their password.
    end
  end
  
  private
  #strong params
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation) 
  end #this also prevents people from signing up as an admin
  
end