class UsersController < ApplicationController

	def index
		@users = User.all
	end

	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		if @user.save
			session[:user_id] = @user.id
			redirect_to root_path
		else
			render :new, notice: 'Unable to signup. We need a name, email, and password.'
		end
	end

	def destroy
		@user = User.find(:id)
		@user.destroy
		redirect_to users_path
	end

	private
		def user_params
			params.require(:user).permit(:name, :email, :password)
		end
end
