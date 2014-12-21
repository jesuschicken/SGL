require 'test_helper'

class MilestoneStatusesControllerTest < ActionController::TestCase
  setup do
    @milestone_status = milestone_statuses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:milestone_statuses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create milestone_status" do
    assert_difference('MilestoneStatus.count') do
      post :create, milestone_status: { milestone_status_name: @milestone_status.milestone_status_name }
    end

    assert_redirected_to milestone_status_path(assigns(:milestone_status))
  end

  test "should show milestone_status" do
    get :show, id: @milestone_status
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @milestone_status
    assert_response :success
  end

  test "should update milestone_status" do
    patch :update, id: @milestone_status, milestone_status: { milestone_status_name: @milestone_status.milestone_status_name }
    assert_redirected_to milestone_status_path(assigns(:milestone_status))
  end

  test "should destroy milestone_status" do
    assert_difference('MilestoneStatus.count', -1) do
      delete :destroy, id: @milestone_status
    end

    assert_redirected_to milestone_statuses_path
  end
end
