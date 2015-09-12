require 'test_helper'

class PriestUsersControllerTest < ActionController::TestCase
  setup do
    @priest_user = priest_users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:priest_users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create priest_user" do
    assert_difference('PriestUser.count') do
      post :create, priest_user: { area_id: @priest_user.area_id, brief: @priest_user.brief, circles: @priest_user.circles, description: @priest_user.description, icon: @priest_user.icon, name: @priest_user.name, phone: @priest_user.phone, religion: @priest_user.religion }
    end

    assert_redirected_to priest_user_path(assigns(:priest_user))
  end

  test "should show priest_user" do
    get :show, id: @priest_user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @priest_user
    assert_response :success
  end

  test "should update priest_user" do
    patch :update, id: @priest_user, priest_user: { area_id: @priest_user.area_id, brief: @priest_user.brief, circles: @priest_user.circles, description: @priest_user.description, icon: @priest_user.icon, name: @priest_user.name, phone: @priest_user.phone, religion: @priest_user.religion }
    assert_redirected_to priest_user_path(assigns(:priest_user))
  end

  test "should destroy priest_user" do
    assert_difference('PriestUser.count', -1) do
      delete :destroy, id: @priest_user
    end

    assert_redirected_to priest_users_path
  end
end
