class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:notice] = "Congrats! User created."
      redirect_to user_path(@user)
    else
      flash[:error] = "Whoops"
      render :action => "new"
    end
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      flash[:notice] = "Congrats! You've updated yr account."
      redirect_to user_path(@user)
    else
      flash[:error] = "Whoops"
      render :action => "edit"
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

end
