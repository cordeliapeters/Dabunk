class PhotosController < ApplicationController

  def index
    @photos = Photo.all
    # @photos.sort! {|a, b| b.created_at <=> a.created_at}
  end

  def show
    @photo = Photo.find(params[:id])
  end

  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.create(url: params[:url], undergrad_id: params[:user_id])
    # college id and categories
    if @photo.save
      render json: @photo
    end
  end

  def destroy
    photo = Photo.find(params[:id])
    photo.destroy

    redirect_to :back
  end

end
