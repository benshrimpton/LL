class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :all_photos


  private
    def all_photos
      @all_photos = current_user.photos.all
    end
end
