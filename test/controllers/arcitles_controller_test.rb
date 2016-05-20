require 'test_helper'

class ArcitlesControllerTest < ActionController::TestCase
  setup do
    @arcitle = arcitles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:arcitles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create arcitle" do
    assert_difference('Arcitle.count') do
      post :create, arcitle: { title: @arcitle.title }
    end

    assert_redirected_to arcitle_path(assigns(:arcitle))
  end

  test "should show arcitle" do
    get :show, id: @arcitle
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @arcitle
    assert_response :success
  end

  test "should update arcitle" do
    patch :update, id: @arcitle, arcitle: { title: @arcitle.title }
    assert_redirected_to arcitle_path(assigns(:arcitle))
  end

  test "should destroy arcitle" do
    assert_difference('Arcitle.count', -1) do
      delete :destroy, id: @arcitle
    end

    assert_redirected_to arcitles_path
  end
end
