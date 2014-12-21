require 'test_helper'

class LawyerLegalAffairsControllerTest < ActionController::TestCase
  setup do
    @lawyer_legal_affair = lawyer_legal_affairs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lawyer_legal_affairs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lawyer_legal_affair" do
    assert_difference('LawyerLegalAffair.count') do
      post :create, lawyer_legal_affair: { lawyer_id: @lawyer_legal_affair.lawyer_id, legal_affair_id: @lawyer_legal_affair.legal_affair_id }
    end

    assert_redirected_to lawyer_legal_affair_path(assigns(:lawyer_legal_affair))
  end

  test "should show lawyer_legal_affair" do
    get :show, id: @lawyer_legal_affair
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lawyer_legal_affair
    assert_response :success
  end

  test "should update lawyer_legal_affair" do
    patch :update, id: @lawyer_legal_affair, lawyer_legal_affair: { lawyer_id: @lawyer_legal_affair.lawyer_id, legal_affair_id: @lawyer_legal_affair.legal_affair_id }
    assert_redirected_to lawyer_legal_affair_path(assigns(:lawyer_legal_affair))
  end

  test "should destroy lawyer_legal_affair" do
    assert_difference('LawyerLegalAffair.count', -1) do
      delete :destroy, id: @lawyer_legal_affair
    end

    assert_redirected_to lawyer_legal_affairs_path
  end
end
