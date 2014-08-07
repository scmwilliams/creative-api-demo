require 'test_helper'

class AdUnitsControllerTest < ActionController::TestCase
  setup do
    @ad_unit = ad_units(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ad_units)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ad_unit" do
    assert_difference('AdUnit.count') do
      post :create, ad_unit: { approved: @ad_unit.approved, asset_group_id: @ad_unit.asset_group_id, asset_id: @ad_unit.asset_id, cta_id: @ad_unit.cta_id, insight: @ad_unit.insight, name: @ad_unit.name, no_api: @ad_unit.no_api, pixel_tracker: @ad_unit.pixel_tracker, screen: @ad_unit.screen, type: @ad_unit.type }
    end

    assert_redirected_to ad_unit_path(assigns(:ad_unit))
  end

  test "should show ad_unit" do
    get :show, id: @ad_unit
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ad_unit
    assert_response :success
  end

  test "should update ad_unit" do
    patch :update, id: @ad_unit, ad_unit: { approved: @ad_unit.approved, asset_group_id: @ad_unit.asset_group_id, asset_id: @ad_unit.asset_id, cta_id: @ad_unit.cta_id, insight: @ad_unit.insight, name: @ad_unit.name, no_api: @ad_unit.no_api, pixel_tracker: @ad_unit.pixel_tracker, screen: @ad_unit.screen, type: @ad_unit.type }
    assert_redirected_to ad_unit_path(assigns(:ad_unit))
  end

  test "should destroy ad_unit" do
    assert_difference('AdUnit.count', -1) do
      delete :destroy, id: @ad_unit
    end

    assert_redirected_to ad_units_path
  end
end
