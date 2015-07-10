class AdminController < ApplicationController
  def index
    @photos= Photo.all
    @pages = Page.all
    @settings = Setting.first
    @albums = Album.all
    @portfolios = Portfolio.all
  end    
end