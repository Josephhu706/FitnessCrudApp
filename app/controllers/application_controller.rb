class ApplicationController < ActionController::Base
    before_action :fetch_user #before we access any page on the website (initiate an action in a controller), we fetch a user
    private

    def fetch_user
        @current_user = User.find_by :id => session[:user_id] if session[:user_id].present? #search for the user object by :id. Populate a variable called current user by who is logged in
        session[:user_id] = nil unless @current_user.present? #Log out non-existent users.
    end

    def check_for_login
        redirect_to login_path unless @current_user.present? #if the current user isn't logged in, redirect them to the home page
    end

    def check_for_admin
        redirect_to login_path unless (@current_user.present? && @current_user.admin?) #because admin column is a boolean i can ask a question. We need the admin to be logged in and also an admin = true in the admin column 
        #this is to make pages only the admin can access
    end

end
