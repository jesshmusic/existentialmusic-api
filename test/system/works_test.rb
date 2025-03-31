require "application_system_test_case"

class WorksTest < ApplicationSystemTestCase
  setup do
    @work = works(:one)
  end

  test "visiting the index" do
    visit works_url
    assert_selector "h1", text: "Works"
  end

  test "should create work" do
    visit works_url
    click_on "New work"

    fill_in "Company", with: @work.company
    fill_in "Description", with: @work.description
    fill_in "End date", with: @work.end_date
    fill_in "Role", with: @work.role
    fill_in "Start date", with: @work.start_date
    click_on "Create Position"

    assert_text "Position was successfully created"
    click_on "Back"
  end

  test "should update Position" do
    visit work_url(@work)
    click_on "Edit this work", match: :first

    fill_in "Company", with: @work.company
    fill_in "Description", with: @work.description
    fill_in "End date", with: @work.end_date
    fill_in "Role", with: @work.role
    fill_in "Start date", with: @work.start_date
    click_on "Update Position"

    assert_text "Position was successfully updated"
    click_on "Back"
  end

  test "should destroy Position" do
    visit work_url(@work)
    click_on "Destroy this work", match: :first

    assert_text "Position was successfully destroyed"
  end
end
