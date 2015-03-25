class BookmarksController < ApplicationController

  def index
    @boookmarks = Bookmark.where(user_id: current_user.id)
  end

  def show
  end

  def new
    @bookmark = Bookmark.new(college_id: params[:id], user_id: current_user.id)
  end

  def create
    @bookmark = Bookmark.create(college_id: params[:id], user_id: current_user.id)
  end

  def edit
  end

  def update
  end

  def destroy
    @bookmark = Bookmark.where(college_id: params[:id], user_id: current_user.id)
    @bookmark.destroy
  end

end
