class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def followers
    @user = current_user
    @followings = current_user.followed_users
    @followers = current_user.followers
  end
end
