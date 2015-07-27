require 'test_helper'

class AlbumPhotosControllerTest < ActionController::TestCase
  setup do
    @album_photo = album_photos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:album_photos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create album_photo" do
    assert_difference('AlbumPhoto.count') do
      post :create, album_photo: {  }
    end

    assert_redirected_to album_photo_path(assigns(:album_photo))
  end

  test "should show album_photo" do
    get :show, id: @album_photo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @album_photo
    assert_response :success
  end

  test "should update album_photo" do
    patch :update, id: @album_photo, album_photo: {  }
    assert_redirected_to album_photo_path(assigns(:album_photo))
  end

  test "should destroy album_photo" do
    assert_difference('AlbumPhoto.count', -1) do
      delete :destroy, id: @album_photo
    end

    assert_redirected_to album_photos_path
  end
end
