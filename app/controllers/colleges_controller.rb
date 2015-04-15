class CollegesController < ApplicationController

  def newsfeed
    @bookmarks = Bookmark.where(user_id: current_user.id)
    @selected_schools = []
    @bookmarks.each do |bookmark|
      @selected_schools << College.find(bookmark.college_id)
    end
    @selected_photos = []
    @selected_schools.each do |school|
      @selected_photos << Photo.where(college_id: school.id)
    end
  end

  def explore
    @selected_schools = []
    College.all.each do |college|
      if Bookmark.where(user_id: current_user.id, college_id: college.id) == nil
        @selected_schools << college
      end
    end
    @selected_photos = []
    @selected_schools.each do |school|
      @selected_photos << Photo.where(college_id: school.id)
    end
  end

  def show
    @college = College.find(params[:id])
    @photos = @college.photos
    # @people = Undergrad.where(college_id: @college.id)

    #include how many students have bookmarked it
    @num_bookmarks = Bookmark.where(college_id: @college.id).count
  end

  def search
    p params
    search_value = College.search_by_school_name(params[:school_name]).limit(10)
    render json: search_value
  end

  def search_school
    school = College.where(name: params[:school_name])
    if school
      redirect_to college_path(school)
    else
      flash[:errors] = "No results. Please try again."
      redirect_to root_url
    end
  end


end
