class AdminController < ApplicationController
  def index
    @photos = current_user.photos.take(6)
    @pages =  current_user.pages.all
    @albums = current_user.albums.all
    @portfolios = current_user.portfolios.all
  end
end
