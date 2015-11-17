require 'test_helper'

class ProductsControllerTest < ActionController::TestCase
  include Devise::TestHelpers

  setup do
    @request.env["devise.mapping"] = Devise.mappings[:admin]
    @product = products(:one)
  end

  test "web user should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:products)
  end

  test "web user should not get new" do
    get :new
    assert_response :redirect
  end

  test "web user should show product" do
    get :show, id: @product
    assert_response :success
  end

  test "web user should not get edit product" do
    get :edit, id: @product
    assert_redirected_to new_user_session_path
  end

end
