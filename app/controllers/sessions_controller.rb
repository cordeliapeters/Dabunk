class SessionsController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.find_by(email: params[:email])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      # do something

    else
      @error = {message: "Your username or password is invalid"}
      # do something with the error
    end
  end

  def destroy
    session[:user_id] = nil
  end

end
