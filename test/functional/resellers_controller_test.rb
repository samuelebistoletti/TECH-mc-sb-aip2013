require 'test_helper'

class ResellersControllerTest < ActionController::TestCase
  setup do
    @reseller = resellers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:resellers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create reseller" do
    assert_difference('Reseller.count') do
      post :create, reseller: { address: @reseller.address, email: @reseller.email, name: @reseller.name, province: @reseller.province, region: @reseller.region, telephone: @reseller.telephone }
    end

    assert_redirected_to reseller_path(assigns(:reseller))
  end

  test "should show reseller" do
    get :show, id: @reseller
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @reseller
    assert_response :success
  end

  test "should update reseller" do
    put :update, id: @reseller, reseller: { address: @reseller.address, email: @reseller.email, name: @reseller.name, province: @reseller.province, region: @reseller.region, telephone: @reseller.telephone }
    assert_redirected_to reseller_path(assigns(:reseller))
  end

  test "should destroy reseller" do
    assert_difference('Reseller.count', -1) do
      delete :destroy, id: @reseller
    end

    assert_redirected_to resellers_path
  end
end
