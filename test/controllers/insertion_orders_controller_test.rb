require 'test_helper'

class InsertionOrdersControllerTest < ActionController::TestCase
  setup do
    @insertion_order = insertion_orders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:insertion_orders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create insertion_order" do
    assert_difference('InsertionOrder.count') do
      post :create, insertion_order: { brand_id: @insertion_order.brand_id, end_date: @insertion_order.end_date, io_number: @insertion_order.io_number, name: @insertion_order.name, start_date: @insertion_order.start_date }
    end

    assert_redirected_to insertion_order_path(assigns(:insertion_order))
  end

  test "should show insertion_order" do
    get :show, id: @insertion_order
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @insertion_order
    assert_response :success
  end

  test "should update insertion_order" do
    patch :update, id: @insertion_order, insertion_order: { brand_id: @insertion_order.brand_id, end_date: @insertion_order.end_date, io_number: @insertion_order.io_number, name: @insertion_order.name, start_date: @insertion_order.start_date }
    assert_redirected_to insertion_order_path(assigns(:insertion_order))
  end

  test "should destroy insertion_order" do
    assert_difference('InsertionOrder.count', -1) do
      delete :destroy, id: @insertion_order
    end

    assert_redirected_to insertion_orders_path
  end
end
