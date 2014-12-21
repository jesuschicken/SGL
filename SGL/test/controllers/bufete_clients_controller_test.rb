require 'test_helper'

class BufeteClientsControllerTest < ActionController::TestCase
  setup do
    @bufete_client = bufete_clients(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bufete_clients)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bufete_client" do
    assert_difference('BufeteClient.count') do
      post :create, bufete_client: { bufete_client_is_active: @bufete_client.bufete_client_is_active, bufete_id: @bufete_client.bufete_id, person_id: @bufete_client.person_id }
    end

    assert_redirected_to bufete_client_path(assigns(:bufete_client))
  end

  test "should show bufete_client" do
    get :show, id: @bufete_client
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bufete_client
    assert_response :success
  end

  test "should update bufete_client" do
    patch :update, id: @bufete_client, bufete_client: { bufete_client_is_active: @bufete_client.bufete_client_is_active, bufete_id: @bufete_client.bufete_id, person_id: @bufete_client.person_id }
    assert_redirected_to bufete_client_path(assigns(:bufete_client))
  end

  test "should destroy bufete_client" do
    assert_difference('BufeteClient.count', -1) do
      delete :destroy, id: @bufete_client
    end

    assert_redirected_to bufete_clients_path
  end
end
