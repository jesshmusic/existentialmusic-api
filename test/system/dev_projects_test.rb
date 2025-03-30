require "application_system_test_case"

class DevProjectsTest < ApplicationSystemTestCase
  setup do
    @dev_project = dev_projects(:one)
  end

  test "visiting the index" do
    visit dev_projects_url
    assert_selector "h1", text: "Dev projects"
  end

  test "should create dev project" do
    visit dev_projects_url
    click_on "New dev project"

    fill_in "Excerpt", with: @dev_project.excerpt
    fill_in "Link", with: @dev_project.link
    fill_in "Slug", with: @dev_project.slug
    fill_in "Subtitle", with: @dev_project.subtitle
    fill_in "Title", with: @dev_project.title
    click_on "Create Dev project"

    assert_text "Dev project was successfully created"
    click_on "Back"
  end

  test "should update Dev project" do
    visit dev_project_url(@dev_project)
    click_on "Edit this dev project", match: :first

    fill_in "Excerpt", with: @dev_project.excerpt
    fill_in "Link", with: @dev_project.link
    fill_in "Slug", with: @dev_project.slug
    fill_in "Subtitle", with: @dev_project.subtitle
    fill_in "Title", with: @dev_project.title
    click_on "Update Dev project"

    assert_text "Dev project was successfully updated"
    click_on "Back"
  end

  test "should destroy Dev project" do
    visit dev_project_url(@dev_project)
    click_on "Destroy this dev project", match: :first

    assert_text "Dev project was successfully destroyed"
  end
end
