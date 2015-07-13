class HomeController < ApplicationController
  def index
    @pages = Page.all
    @settings = Setting.first
    @albums = Album.all
    @portfolios = Portfolio.all
    @photos = current_user.photos.all
  end
end
