require 'test_helper'

class CvsectionsControllerTest < ActionController::TestCase
  setup do
    @cvsection = cvsections(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cvsections)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cvsection" do
    assert_difference('Cvsection.count') do
      post :create, cvsection: { content: @cvsection.content, location: @cvsection.location, title: @cvsection.title }
    end

    assert_redirected_to cvsection_path(assigns(:cvsection))
  end

  test "should show cvsection" do
    get :show, id: @cvsection
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cvsection
    assert_response :success
  end

  test "should update cvsection" do
    put :update, id: @cvsection, cvsection: { content: @cvsection.content, location: @cvsection.location, title: @cvsection.title }
    assert_redirected_to cvsection_path(assigns(:cvsection))
  end

  test "should destroy cvsection" do
    assert_difference('Cvsection.count', -1) do
      delete :destroy, id: @cvsection
    end

    assert_redirected_to cvsections_path
  end
end
