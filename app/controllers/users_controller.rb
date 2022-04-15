class UsersController < ApplicationController
  before_action :check_for_admin, :only => [:index] #this means if you're not logged in you can't get to the index page
  #to prevent the already logged in users to log in. We need an Administrator account.
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new user_params 
    if @user.save 
      session[:user_id] = @user.id
      flash[:message] = "Thank you for signing up!"
      redirect_to root_path #we can redirect to anywhere, not necessarily the root_path
    else
      render :new #we put user in an instance variable @user because the form requires an @user. Show the form again so they can try again.
      #we send them back to :new instead of sending back to the home page so they don't have to reenter their password.
    end
  end
  
  private
  #strong params
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation) #MAKE SURE password_confirmation IS SPELLED CORRECTLY
  end #this also prevents people from signing up as an admin
  #
end