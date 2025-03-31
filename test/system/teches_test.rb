require "application_system_test_case"

class TechesTest < ApplicationSystemTestCase
  setup do
    @tech = teches(:one)
  end

  test "visiting the index" do
    visit teches_url
    assert_selector "h1", text: "Teches"
  end

  test "should create tech" do
    visit teches_url
    click_on "New tech"

    fill_in "Description", with: @tech.description
    fill_in "Name", with: @tech.name
    click_on "Create Technology"

    assert_text "Technology was successfully created"
    click_on "Back"
  end

  test "should update Technology" do
    visit tech_url(@tech)
    click_on "Edit this tech", match: :first

    fill_in "Description", with: @tech.description
    fill_in "Name", with: @tech.name
    click_on "Update Technology"

    assert_text "Technology was successfully updated"
    click_on "Back"
  end

  test "should destroy Technology" do
    visit tech_url(@tech)
    click_on "Destroy this tech", match: :first

    assert_text "Technology was successfully destroyed"
  end
end
