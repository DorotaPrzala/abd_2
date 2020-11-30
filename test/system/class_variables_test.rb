require "application_system_test_case"

class ClassVariablesTest < ApplicationSystemTestCase
  setup do
    @class_variable = class_variables(:one)
  end

  test "visiting the index" do
    visit class_variables_url
    assert_selector "h1", text: "Class Variables"
  end

  test "creating a Class variable" do
    visit class_variables_url
    click_on "New Class Variable"

    fill_in "Orders number", with: @class_variable.orders_number
    click_on "Create Class variable"

    assert_text "Class variable was successfully created"
    click_on "Back"
  end

  test "updating a Class variable" do
    visit class_variables_url
    click_on "Edit", match: :first

    fill_in "Orders number", with: @class_variable.orders_number
    click_on "Update Class variable"

    assert_text "Class variable was successfully updated"
    click_on "Back"
  end

  test "destroying a Class variable" do
    visit class_variables_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Class variable was successfully destroyed"
  end
end
