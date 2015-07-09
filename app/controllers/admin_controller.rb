class AdminController < ApplicationController
  def index
    @pages = Page.all
    @settings = Setting.first
    @albums = Album.all
    @portfolios = Portfolio.all
  end    
end