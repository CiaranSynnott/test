require 'test_helper'

class ItemsControllerTest < ActionController::TestCase
  setup do
    @item = items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create item" do
    assert_difference('Item.count') do
      post :create, item: { brand: @item.brand, category: @item.category, cost_price: @item.cost_price, description: @item.description, features: @item.features, image_url: @item.image_url, order_no: @item.order_no, qty_in_stock: @item.qty_in_stock, rider_position: @item.rider_position, rider_profile: @item.rider_profile, selling_price: @item.selling_price, size: @item.size, specification: @item.specification, supplier: @item.supplier, title: @item.title }
    end

    assert_redirected_to item_path(assigns(:item))
  end

  test "should show item" do
    get :show, id: @item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @item
    assert_response :success
  end

  test "should update item" do
    patch :update, id: @item, item: { brand: @item.brand, category: @item.category, cost_price: @item.cost_price, description: @item.description, features: @item.features, image_url: @item.image_url, order_no: @item.order_no, qty_in_stock: @item.qty_in_stock, rider_position: @item.rider_position, rider_profile: @item.rider_profile, selling_price: @item.selling_price, size: @item.size, specification: @item.specification, supplier: @item.supplier, title: @item.title }
    assert_redirected_to item_path(assigns(:item))
  end

  test "should destroy item" do
    assert_difference('Item.count', -1) do
      delete :destroy, id: @item
    end

    assert_redirected_to items_path
  end
end
