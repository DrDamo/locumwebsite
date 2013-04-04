require 'test_helper'

class SectionHeadingsControllerTest < ActionController::TestCase
  setup do
    @section_heading = section_headings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:section_headings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create section_heading" do
    assert_difference('SectionHeading.count') do
      post :create, section_heading: { desc: @section_heading.desc, name: @section_heading.name, position: @section_heading.position }
    end

    assert_redirected_to section_heading_path(assigns(:section_heading))
  end

  test "should show section_heading" do
    get :show, id: @section_heading
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @section_heading
    assert_response :success
  end

  test "should update section_heading" do
    put :update, id: @section_heading, section_heading: { desc: @section_heading.desc, name: @section_heading.name, position: @section_heading.position }
    assert_redirected_to section_heading_path(assigns(:section_heading))
  end

  test "should destroy section_heading" do
    assert_difference('SectionHeading.count', -1) do
      delete :destroy, id: @section_heading
    end

    assert_redirected_to section_headings_path
  end
end
