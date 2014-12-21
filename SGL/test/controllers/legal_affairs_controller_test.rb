require 'test_helper'

class LegalAffairsControllerTest < ActionController::TestCase
  setup do
    @legal_affair = legal_affairs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:legal_affairs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create legal_affair" do
    assert_difference('LegalAffair.count') do
      post :create, legal_affair: { bufete_id: @legal_affair.bufete_id, legal_affair_begin_date: @legal_affair.legal_affair_begin_date, legal_affair_description: @legal_affair.legal_affair_description, legal_affair_end_date: @legal_affair.legal_affair_end_date, legal_affair_name: @legal_affair.legal_affair_name, status_id: @legal_affair.status_id, sub_type_id: @legal_affair.sub_type_id }
    end

    assert_redirected_to legal_affair_path(assigns(:legal_affair))
  end

  test "should show legal_affair" do
    get :show, id: @legal_affair
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @legal_affair
    assert_response :success
  end

  test "should update legal_affair" do
    patch :update, id: @legal_affair, legal_affair: { bufete_id: @legal_affair.bufete_id, legal_affair_begin_date: @legal_affair.legal_affair_begin_date, legal_affair_description: @legal_affair.legal_affair_description, legal_affair_end_date: @legal_affair.legal_affair_end_date, legal_affair_name: @legal_affair.legal_affair_name, status_id: @legal_affair.status_id, sub_type_id: @legal_affair.sub_type_id }
    assert_redirected_to legal_affair_path(assigns(:legal_affair))
  end

  test "should destroy legal_affair" do
    assert_difference('LegalAffair.count', -1) do
      delete :destroy, id: @legal_affair
    end

    assert_redirected_to legal_affairs_path
  end
end
