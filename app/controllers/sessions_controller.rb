class SessionsController < ApplicationController
  	skip_before_action :ensure_login, only: [:new, :create]
  def new
  	#Login Page template - new.html.erb
  end
	def create
		username = User.find_by(username: params[:user][:username])
		password = params[:user][:password]
		if username && username.authenticate(password)
			session[:user_id] = username.id
			redirect_to root_path, notice: "Logged in successfully"
			else
				redirect_to login_path, alert: "Invalid username/password combination!"
	  end
	 end

  def destroy
  	reset_session  #helper to wipe out session and everything on it
 		redirect_to login_path, notice: "You have been logged out!"
  end
end