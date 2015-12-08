require 'test_helper'

class ChoirMembersControllerTest < ActionController::TestCase
  setup do
    @choir_member = choir_members(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:choir_members)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create choir_member" do
    assert_difference('ChoirMember.count') do
      post :create, choir_member: { first_name: @choir_member.first_name, last_name: @choir_member.last_name, side: @choir_member.side, voice: @choir_member.voice }
    end

    assert_redirected_to choir_member_path(assigns(:choir_member))
  end

  test "should show choir_member" do
    get :show, id: @choir_member
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @choir_member
    assert_response :success
  end

  test "should update choir_member" do
    patch :update, id: @choir_member, choir_member: { first_name: @choir_member.first_name, last_name: @choir_member.last_name, side: @choir_member.side, voice: @choir_member.voice }
    assert_redirected_to choir_member_path(assigns(:choir_member))
  end

  test "should destroy choir_member" do
    assert_difference('ChoirMember.count', -1) do
      delete :destroy, id: @choir_member
    end

    assert_redirected_to choir_members_path
  end
end
