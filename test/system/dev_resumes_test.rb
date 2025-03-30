require "application_system_test_case"

class DevResumesTest < ApplicationSystemTestCase
  setup do
    @dev_resume = dev_resume(:one)
  end

  test "visiting the index" do
    visit dev_resume_url
    assert_selector "h1", text: "Dev resumes"
  end

  test "should create dev resume" do
    visit dev_resume_url
    click_on "New dev resume"

    fill_in "Name", with: @dev_resume.name
    fill_in "Title", with: @dev_resume.title
    click_on "Create Dev resume"

    assert_text "Dev resume was successfully created"
    click_on "Back"
  end

  test "should update Dev resume" do
    visit dev_resume_url(@dev_resume)
    click_on "Edit this dev resume", match: :first

    fill_in "Name", with: @dev_resume.name
    fill_in "Title", with: @dev_resume.title
    click_on "Update Dev resume"

    assert_text "Dev resume was successfully updated"
    click_on "Back"
  end

  test "should destroy Dev resume" do
    visit dev_resume_url(@dev_resume)
    click_on "Destroy this dev resume", match: :first

    assert_text "Dev resume was successfully destroyed"
  end
end
