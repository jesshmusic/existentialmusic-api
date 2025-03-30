require "test_helper"

class DevResumesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dev_resume = dev_resume(:one)
  end

  test "should get index" do
    get dev_resume_url
    assert_response :success
  end

  test "should get new" do
    get new_dev_resume_url
    assert_response :success
  end

  test "should create dev_resume" do
    assert_difference("DevResume.count") do
      post dev_resume_url, params: { dev_resume: { name: @dev_resume.name, title: @dev_resume.title } }
    end

    assert_redirected_to dev_resume_url(DevResume.last)
  end

  test "should show dev_resume" do
    get dev_resume_url(@dev_resume)
    assert_response :success
  end

  test "should get edit" do
    get edit_dev_resume_url(@dev_resume)
    assert_response :success
  end

  test "should update dev_resume" do
    patch dev_resume_url(@dev_resume), params: { dev_resume: { name: @dev_resume.name, title: @dev_resume.title } }
    assert_redirected_to dev_resume_url(@dev_resume)
  end

  test "should destroy dev_resume" do
    assert_difference("DevResume.count", -1) do
      delete dev_resume_url(@dev_resume)
    end

    assert_redirected_to dev_resume_url
  end
end
