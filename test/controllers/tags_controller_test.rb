require 'test_helper'

class TagsControllerTest < ActionController::TestCase
  setup do
    @tag = tags(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tags)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tag" do
    assert_difference('Tag.count') do
      post :create, tag: { ad_unit_id: @tag.ad_unit_id, easy_touch: @tag.easy_touch, impression_goal: @tag.impression_goal, insertion_order_id: @tag.insertion_order_id, no_api: @tag.no_api, partner_id: @tag.partner_id }
    end

    assert_redirected_to tag_path(assigns(:tag))
  end

  test "should show tag" do
    get :show, id: @tag
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tag
    assert_response :success
  end

  test "should update tag" do
    patch :update, id: @tag, tag: { ad_unit_id: @tag.ad_unit_id, easy_touch: @tag.easy_touch, impression_goal: @tag.impression_goal, insertion_order_id: @tag.insertion_order_id, no_api: @tag.no_api, partner_id: @tag.partner_id }
    assert_redirected_to tag_path(assigns(:tag))
  end

  test "should destroy tag" do
    assert_difference('Tag.count', -1) do
      delete :destroy, id: @tag
    end

    assert_redirected_to tags_path
  end
end
