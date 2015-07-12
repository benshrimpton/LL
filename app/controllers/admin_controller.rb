class AdminController < ApplicationController
  def index
    @photos = current_user.photos.all
    @pages =  current_user.pages.all
    @albums = current_user.albums.all
    @portfolios = current_user.portfolios.all
  end
end
