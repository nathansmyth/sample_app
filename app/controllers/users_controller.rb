class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @title = "Edit page for #{@user.name}"
  end
  def new
    @title = 'Sign up'
  end
end
