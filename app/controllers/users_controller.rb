class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @title = "Edit page for #{@user.name}"
  end
  def new
    @user = User.new
    @title = 'Sign up'
  end
  def create
    @user = User.new(params[:user])
    @title = 'Create user'
    if @user.save
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @user
    else
      render 'new'
    end
  end
end
