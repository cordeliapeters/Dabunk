class SessionsController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.find_by(email: params[:email])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to user_photos_path(@user)

    else
      @error = {message: "Your username or password is invalid"}
      redirect_to :back
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end
