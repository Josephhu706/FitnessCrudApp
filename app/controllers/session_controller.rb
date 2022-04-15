class SessionController < ApplicationController
  def new
  end

  def create
    user = User.find_by :email => params[:email]
    if user.present? && user.authenticate(params[:password]) #if we get something in the database and the users password is authenticated..
      #log them in?? how do we remember the user?
      session[:user_id] = user.id #session stores the user id in teh session hash. We are only storing the id for space efficiency. Not the whole user object. THIS LINE LOGS YOU IN
      flash[:welcome] = "Welcome back #{user.email}!"
      redirect_to root_path
    else
      redirect_to login_path #redirect them to the form
    end
  end
  
  def destroy
    session[:user_id] = nil #forget the person logged in
    redirect_to login_path #redirect to login page in case someone else wants to log in
  end
end

# UPDATE SEED DATA ASSIGN USER TO CARDS