class SessionsController < ApplicationController
	def new
	end

	def create
		# Kontrollitakse kasutajt
		user = User.authenticate :email => params[:email], :password => params[:password]
		# Kui tagastatakse, siis suunab
		if user
			session[:user_name] = user.name
			redirect_to sign_up_url, :notice => "Logged in!"
		# Vastasel korral jätab samale lehele
		else
			flash.now.alert = "Invalid e-mail or password!"
			redirect_to log_in_url
		end
	end

	def destroy
		session[:user_id] = nil
		redirect_to root_url, :notice => "Logged out!"
	end
end
