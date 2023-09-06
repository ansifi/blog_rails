class UsersController < ApplicationController
    before_action :set_user, only: [:show]
  
    def new
      @user = User.new
    end
  
    def create
      @user = User.new(user_params)
      if @user.save
        flash[:success] = "Account created successfully. You can now log in."
        redirect_to login_path
      else
        render 'new'
      end
    end
  
    def show
      # This action displays a user's profile.
    end
  
    private
  
    def user_params
      params.require(:user).permit(:name, :email, :password_digest, :password_confirmation)
    end
  
    def set_user
      @user = User.find(params[:id])
    end
  end
  