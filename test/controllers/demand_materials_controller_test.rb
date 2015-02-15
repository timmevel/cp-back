require 'test_helper'

class DemandMaterialsControllerTest < ActionController::TestCase
  setup do
    @demand_material = demand_materials(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:demand_materials)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create demand_material" do
    assert_difference('DemandMaterial.count') do
      post :create, demand_material: { material_id: @demand_material.material_id, pot_id: @demand_material.pot_id, quantity: @demand_material.quantity }
    end

    assert_redirected_to demand_material_path(assigns(:demand_material))
  end

  test "should show demand_material" do
    get :show, id: @demand_material
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @demand_material
    assert_response :success
  end

  test "should update demand_material" do
    patch :update, id: @demand_material, demand_material: { material_id: @demand_material.material_id, pot_id: @demand_material.pot_id, quantity: @demand_material.quantity }
    assert_redirected_to demand_material_path(assigns(:demand_material))
  end

  test "should destroy demand_material" do
    assert_difference('DemandMaterial.count', -1) do
      delete :destroy, id: @demand_material
    end

    assert_redirected_to demand_materials_path
  end
end
