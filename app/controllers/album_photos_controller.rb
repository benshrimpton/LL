class AlbumPhotosController < ApplicationController
  before_action :set_album_photo, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @album_photos = AlbumPhoto.all
    respond_with(@album_photos)
  end

  def show
    respond_with(@album_photo)
  end

  def new
    @album_photo = AlbumPhoto.new
    respond_with(@album_photo)
  end

  def edit
  end

  def create
    @album_photo = AlbumPhoto.new(album_photo_params)
    @album_photo.save
    respond_with(@album_photo)
  end

  def update
    @album_photo.update(album_photo_params)
    respond_with(@album_photo)
  end

  def destroy
    @album_photo.destroy
    respond_with(@album_photo)
  end

  private
    def set_album_photo
      @album_photo = AlbumPhoto.find(params[:id])
    end

    def album_photo_params
      params[:album_photo]
    end
end
