require 'test_helper'

class MilestoneTypesControllerTest < ActionController::TestCase
  setup do
    @milestone_type = milestone_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:milestone_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create milestone_type" do
    assert_difference('MilestoneType.count') do
      post :create, milestone_type: { milestone_type_name: @milestone_type.milestone_type_name }
    end

    assert_redirected_to milestone_type_path(assigns(:milestone_type))
  end

  test "should show milestone_type" do
    get :show, id: @milestone_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @milestone_type
    assert_response :success
  end

  test "should update milestone_type" do
    patch :update, id: @milestone_type, milestone_type: { milestone_type_name: @milestone_type.milestone_type_name }
    assert_redirected_to milestone_type_path(assigns(:milestone_type))
  end

  test "should destroy milestone_type" do
    assert_difference('MilestoneType.count', -1) do
      delete :destroy, id: @milestone_type
    end

    assert_redirected_to milestone_types_path
  end
end
