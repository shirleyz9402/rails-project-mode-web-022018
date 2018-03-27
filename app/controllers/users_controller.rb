class UsersController < ApplicationController
  before_action :require_logged_in, only: [:home, :death]
  def new
  end

  def create
    return redirect_to controller: 'users', action: 'new' unless @user.save
    session[:user_id] = @user.id
    redirect_to controller: 'users', action: 'home'
  end

  def home
  end

  def death
    @user = User.find(session[:user_id])
    @result = @user.results.last
  end


  private

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end
end
