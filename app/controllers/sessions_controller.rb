class SessionsController < ApplicationController

	def create
		user = User.find_by(user_name: params[:user_name])
		if user&.authenticate(params[:password])
			session[:user_id] = user.id
			render json: user, status: :ok
		else
			render json: { error: "Invalid username or password" }, status: :unauthorized
		end
	end

	def destroy

	
	end

end
