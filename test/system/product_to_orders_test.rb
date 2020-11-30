require "application_system_test_case"

class ProductToOrdersTest < ApplicationSystemTestCase
  setup do
    @product_to_order = product_to_orders(:one)
  end

  test "visiting the index" do
    visit product_to_orders_url
    assert_selector "h1", text: "Product To Orders"
  end

  test "creating a Product to order" do
    visit product_to_orders_url
    click_on "New Product To Order"

    click_on "Create Product to order"

    assert_text "Product to order was successfully created"
    click_on "Back"
  end

  test "updating a Product to order" do
    visit product_to_orders_url
    click_on "Edit", match: :first

    click_on "Update Product to order"

    assert_text "Product to order was successfully updated"
    click_on "Back"
  end

  test "destroying a Product to order" do
    visit product_to_orders_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Product to order was successfully destroyed"
  end
end
