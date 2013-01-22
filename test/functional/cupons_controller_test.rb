require 'test_helper'

class CuponsControllerTest < ActionController::TestCase
  setup do
    @cupon = cupons(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cupons)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cupon" do
    assert_difference('Cupon.count') do
      post :create, :cupon => { :descripcion => @cupon.descripcion, :foto => @cupon.foto, :nombre => @cupon.nombre, :precio_dcto => @cupon.precio_dcto, :precio_normal => @cupon.precio_normal, :stock => @cupon.stock, :validez => @cupon.validez }
    end

    assert_redirected_to cupon_path(assigns(:cupon))
  end

  test "should show cupon" do
    get :show, :id => @cupon
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @cupon
    assert_response :success
  end

  test "should update cupon" do
    put :update, :id => @cupon, :cupon => { :descripcion => @cupon.descripcion, :foto => @cupon.foto, :nombre => @cupon.nombre, :precio_dcto => @cupon.precio_dcto, :precio_normal => @cupon.precio_normal, :stock => @cupon.stock, :validez => @cupon.validez }
    assert_redirected_to cupon_path(assigns(:cupon))
  end

  test "should destroy cupon" do
    assert_difference('Cupon.count', -1) do
      delete :destroy, :id => @cupon
    end

    assert_redirected_to cupons_path
  end
end
