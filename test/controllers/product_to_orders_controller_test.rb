require 'test_helper'

class ProductToOrdersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product_to_order = product_to_orders(:one)
  end

  test "should get index" do
    get product_to_orders_url
    assert_response :success
  end

  test "should get new" do
    get new_product_to_order_url
    assert_response :success
  end

  test "should create product_to_order" do
    assert_difference('ProductToOrder.count') do
      post product_to_orders_url, params: { product_to_order: {  } }
    end

    assert_redirected_to product_to_order_url(ProductToOrder.last)
  end

  test "should show product_to_order" do
    get product_to_order_url(@product_to_order)
    assert_response :success
  end

  test "should get edit" do
    get edit_product_to_order_url(@product_to_order)
    assert_response :success
  end

  test "should update product_to_order" do
    patch product_to_order_url(@product_to_order), params: { product_to_order: {  } }
    assert_redirected_to product_to_order_url(@product_to_order)
  end

  test "should destroy product_to_order" do
    assert_difference('ProductToOrder.count', -1) do
      delete product_to_order_url(@product_to_order)
    end

    assert_redirected_to product_to_orders_url
  end
end
