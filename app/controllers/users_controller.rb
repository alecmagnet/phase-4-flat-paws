class UsersController < ApplicationController

	def create
		user = User.create(user_params)
		if user.valid? 
			# session[:user_id] = user.id
			render json: user, status: :created
		else
			render json: { error: "Must have valid username and/or password"}, status: :unauthorized
		end
	end

	private

	def user_params
		params.permit(:user_name, :password, :password_confirmation)
	end
end
