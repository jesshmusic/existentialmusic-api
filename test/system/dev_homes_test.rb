require "application_system_test_case"

class DevHomesTest < ApplicationSystemTestCase
  setup do
    @dev_home = dev_homes(:one)
  end

  test "visiting the index" do
    visit dev_homes_url
    assert_selector "h1", text: "Dev homes"
  end

  test "should create dev home" do
    visit dev_homes_url
    click_on "New dev home"

    fill_in "Title", with: @dev_home.title
    click_on "Create Dev home"

    assert_text "Dev home was successfully created"
    click_on "Back"
  end

  test "should update Dev home" do
    visit dev_home_url(@dev_home)
    click_on "Edit this dev home", match: :first

    fill_in "Title", with: @dev_home.title
    click_on "Update Dev home"

    assert_text "Dev home was successfully updated"
    click_on "Back"
  end

  test "should destroy Dev home" do
    visit dev_home_url(@dev_home)
    click_on "Destroy this dev home", match: :first

    assert_text "Dev home was successfully destroyed"
  end
end
