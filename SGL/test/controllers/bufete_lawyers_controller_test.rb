require 'test_helper'

class BufeteLawyersControllerTest < ActionController::TestCase
  setup do
    @bufete_lawyer = bufete_lawyers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bufete_lawyers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bufete_lawyer" do
    assert_difference('BufeteLawyer.count') do
      post :create, bufete_lawyer: { bufete_id: @bufete_lawyer.bufete_id, bufete_lawyer_is_active: @bufete_lawyer.bufete_lawyer_is_active, lawyer_id: @bufete_lawyer.lawyer_id }
    end

    assert_redirected_to bufete_lawyer_path(assigns(:bufete_lawyer))
  end

  test "should show bufete_lawyer" do
    get :show, id: @bufete_lawyer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bufete_lawyer
    assert_response :success
  end

  test "should update bufete_lawyer" do
    patch :update, id: @bufete_lawyer, bufete_lawyer: { bufete_id: @bufete_lawyer.bufete_id, bufete_lawyer_is_active: @bufete_lawyer.bufete_lawyer_is_active, lawyer_id: @bufete_lawyer.lawyer_id }
    assert_redirected_to bufete_lawyer_path(assigns(:bufete_lawyer))
  end

  test "should destroy bufete_lawyer" do
    assert_difference('BufeteLawyer.count', -1) do
      delete :destroy, id: @bufete_lawyer
    end

    assert_redirected_to bufete_lawyers_path
  end
end
