require 'test_helper'

class CtaControllerTest < ActionController::TestCase
  setup do
    @ctum = cta(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cta)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ctum" do
    assert_difference('Ctum.count') do
      post :create, ctum: { ad_unit_id: @ctum.ad_unit_id, full_screen: @ctum.full_screen, name: @ctum.name, new_window: @ctum.new_window, pixel_height: @ctum.pixel_height, pixel_width: @ctum.pixel_width, right_offset: @ctum.right_offset, top_offset: @ctum.top_offset, url: @ctum.url }
    end

    assert_redirected_to ctum_path(assigns(:ctum))
  end

  test "should show ctum" do
    get :show, id: @ctum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ctum
    assert_response :success
  end

  test "should update ctum" do
    patch :update, id: @ctum, ctum: { ad_unit_id: @ctum.ad_unit_id, full_screen: @ctum.full_screen, name: @ctum.name, new_window: @ctum.new_window, pixel_height: @ctum.pixel_height, pixel_width: @ctum.pixel_width, right_offset: @ctum.right_offset, top_offset: @ctum.top_offset, url: @ctum.url }
    assert_redirected_to ctum_path(assigns(:ctum))
  end

  test "should destroy ctum" do
    assert_difference('Ctum.count', -1) do
      delete :destroy, id: @ctum
    end

    assert_redirected_to cta_path
  end
end
