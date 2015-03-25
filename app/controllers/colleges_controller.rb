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
    #the pictures from a single college
    #list of the undergrads at that college
  end

end
