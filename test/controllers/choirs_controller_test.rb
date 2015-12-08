require 'test_helper'

class ChoirsControllerTest < ActionController::TestCase
  setup do
    @choir = choirs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:choirs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create choir" do
    assert_difference('Choir.count') do
      post :create, choir: { choir_location: @choir.choir_location, choir_name: @choir.choir_name }
    end

    assert_redirected_to choir_path(assigns(:choir))
  end

  test "should show choir" do
    get :show, id: @choir
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @choir
    assert_response :success
  end

  test "should update choir" do
    patch :update, id: @choir, choir: { choir_location: @choir.choir_location, choir_name: @choir.choir_name }
    assert_redirected_to choir_path(assigns(:choir))
  end

  test "should destroy choir" do
    assert_difference('Choir.count', -1) do
      delete :destroy, id: @choir
    end

    assert_redirected_to choirs_path
  end
end
