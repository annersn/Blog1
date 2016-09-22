class SessionsController < ApplicationController
	def new
	end
	
	def create
		#redirect_to params[:sessions][:email]
		email = params[:sessions][:email]
		@user = User.find_by_email(email)
		if @user && @user.authenticate(params[:sessions][:password])
			session[:user_id] = @user.id
			redirect_to '/'
		else
			redirect_to 'login'
		end
	end

	def destroy
		session[:user_id] = nil
		redirect_to '/'
	end
end
