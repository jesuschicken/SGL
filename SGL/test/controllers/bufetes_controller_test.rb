require 'test_helper'

class BufetesControllerTest < ActionController::TestCase
  setup do
    @bufete = bufetes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bufetes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bufete" do
    assert_difference('Bufete.count') do
      post :create, bufete: { bufete_active: @bufete.bufete_active, bufete_address_floor: @bufete.bufete_address_floor, bufete_address_number: @bufete.bufete_address_number, bufete_address_street: @bufete.bufete_address_street, bufete_email: @bufete.bufete_email, bufete_first_phone: @bufete.bufete_first_phone, bufete_name: @bufete.bufete_name, bufete_office_number: @bufete.bufete_office_number, bufete_rut: @bufete.bufete_rut, bufete_second_phone: @bufete.bufete_second_phone, city_id: @bufete.city_id }
    end

    assert_redirected_to bufete_path(assigns(:bufete))
  end

  test "should show bufete" do
    get :show, id: @bufete
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bufete
    assert_response :success
  end

  test "should update bufete" do
    patch :update, id: @bufete, bufete: { bufete_active: @bufete.bufete_active, bufete_address_floor: @bufete.bufete_address_floor, bufete_address_number: @bufete.bufete_address_number, bufete_address_street: @bufete.bufete_address_street, bufete_email: @bufete.bufete_email, bufete_first_phone: @bufete.bufete_first_phone, bufete_name: @bufete.bufete_name, bufete_office_number: @bufete.bufete_office_number, bufete_rut: @bufete.bufete_rut, bufete_second_phone: @bufete.bufete_second_phone, city_id: @bufete.city_id }
    assert_redirected_to bufete_path(assigns(:bufete))
  end

  test "should destroy bufete" do
    assert_difference('Bufete.count', -1) do
      delete :destroy, id: @bufete
    end

    assert_redirected_to bufetes_path
  end
end
