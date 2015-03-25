class UsersController < ApplicationController
skip_before_filter  :verify_authenticity_token

  def new
    @user = User.new
  end

  def create
    @user = User.new(type: params[:type], name: params[:name], email: params[:email], password: params[:password])
    if @user.save
      session[:user_id] = @user.id
      if @user.is_a? Undergrad
        redirect_to edit_user_path(@user)

      else @user.is_a? Student
        redirect_to newsfeed_path(@user)
      end

    else
      flash[:errors] = @user.errors.full_messages
      redirect_to :back
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update_attributes(grade: params[:grade], activities: params[:activities], hometown: params[:hometown], major: params[:major], minor: params[:minor])
    redirect_to user_path(@user)
  end

  def destroy
  end


end
