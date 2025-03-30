require "application_system_test_case"

class DevAboutsTest < ApplicationSystemTestCase
  setup do
    @dev_about = dev_about(:one)
  end

  test "visiting the index" do
    visit dev_about_url
    assert_selector "h1", text: "Dev abouts"
  end

  test "should create dev about" do
    visit dev_about_url
    click_on "New dev about"

    fill_in "Subtitle", with: @dev_about.subtitle
    fill_in "Title", with: @dev_about.title
    click_on "Create Dev about"

    assert_text "Dev about was successfully created"
    click_on "Back"
  end

  test "should update Dev about" do
    visit dev_about_url(@dev_about)
    click_on "Edit this dev about", match: :first

    fill_in "Subtitle", with: @dev_about.subtitle
    fill_in "Title", with: @dev_about.title
    click_on "Update Dev about"

    assert_text "Dev about was successfully updated"
    click_on "Back"
  end

  test "should destroy Dev about" do
    visit dev_about_url(@dev_about)
    click_on "Destroy this dev about", match: :first

    assert_text "Dev about was successfully destroyed"
  end
end
