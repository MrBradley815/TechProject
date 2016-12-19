class UsersController < ApplicationController
	before_action :require_correct_user, only: [:edit, :update]
	def create
		user = User.new(user_params)
		if user.save
			session[:user_id] = user.id
			redirect_to "/users"
		else
			flash[:errors] = user.errors.full_messages
			redirect_to root_path
		end
	end



	private
		def user_params
			params.require(:user).permit(:first, :last, :phone, :email, :password, :password_confirmation)
		end
end
