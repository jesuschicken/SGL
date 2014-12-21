require 'test_helper'

class BufeteClientLegalAffairsControllerTest < ActionController::TestCase
  setup do
    @bufete_client_legal_affair = bufete_client_legal_affairs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bufete_client_legal_affairs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bufete_client_legal_affair" do
    assert_difference('BufeteClientLegalAffair.count') do
      post :create, bufete_client_legal_affair: { bufete_client_id: @bufete_client_legal_affair.bufete_client_id, legal_affair_id: @bufete_client_legal_affair.legal_affair_id }
    end

    assert_redirected_to bufete_client_legal_affair_path(assigns(:bufete_client_legal_affair))
  end

  test "should show bufete_client_legal_affair" do
    get :show, id: @bufete_client_legal_affair
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bufete_client_legal_affair
    assert_response :success
  end

  test "should update bufete_client_legal_affair" do
    patch :update, id: @bufete_client_legal_affair, bufete_client_legal_affair: { bufete_client_id: @bufete_client_legal_affair.bufete_client_id, legal_affair_id: @bufete_client_legal_affair.legal_affair_id }
    assert_redirected_to bufete_client_legal_affair_path(assigns(:bufete_client_legal_affair))
  end

  test "should destroy bufete_client_legal_affair" do
    assert_difference('BufeteClientLegalAffair.count', -1) do
      delete :destroy, id: @bufete_client_legal_affair
    end

    assert_redirected_to bufete_client_legal_affairs_path
  end
end
