require 'test_helper'

class CategoriesControllerTest < ActionController::TestCase
  include Devise::TestHelpers

  setup do
    @request.env["devise.mapping"] = Devise.mappings[:admin]
    @category = categories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "web user should not get new category" do
    get :new
    assert_redirected_to new_user_session_path
  end

  test "should show category" do
    get :show, id: @category
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @category
    assert_response :redirect
  end

  test "should update category" do
    patch :update, id: @category, category: {name: @category.name}
    assert_redirected_to new_user_session_path
  end
end
