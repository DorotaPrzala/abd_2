require "application_system_test_case"

class VolonteersTest < ApplicationSystemTestCase
  setup do
    @volonteer = volonteers(:one)
  end

  test "visiting the index" do
    visit volonteers_url
    assert_selector "h1", text: "Volonteers"
  end

  test "creating a Volonteer" do
    visit volonteers_url
    click_on "New Volonteer"

    fill_in "Name", with: @volonteer.name
    click_on "Create Volonteer"

    assert_text "Volonteer was successfully created"
    click_on "Back"
  end

  test "updating a Volonteer" do
    visit volonteers_url
    click_on "Edit", match: :first

    fill_in "Name", with: @volonteer.name
    click_on "Update Volonteer"

    assert_text "Volonteer was successfully updated"
    click_on "Back"
  end

  test "destroying a Volonteer" do
    visit volonteers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Volonteer was successfully destroyed"
  end
end
