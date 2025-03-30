require "test_helper"

class DevAboutsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dev_about = dev_about(:one)
  end

  test "should get index" do
    get dev_about_url
    assert_response :success
  end

  test "should get new" do
    get new_dev_about_url
    assert_response :success
  end

  test "should create dev_about" do
    assert_difference("DevAbout.count") do
      post dev_about_url, params: { dev_about: { subtitle: @dev_about.subtitle, title: @dev_about.title } }
    end

    assert_redirected_to dev_about_url(DevAbout.last)
  end

  test "should show dev_about" do
    get dev_about_url(@dev_about)
    assert_response :success
  end

  test "should get edit" do
    get edit_dev_about_url(@dev_about)
    assert_response :success
  end

  test "should update dev_about" do
    patch dev_about_url(@dev_about), params: { dev_about: { subtitle: @dev_about.subtitle, title: @dev_about.title } }
    assert_redirected_to dev_about_url(@dev_about)
  end

  test "should destroy dev_about" do
    assert_difference("DevAbout.count", -1) do
      delete dev_about_url(@dev_about)
    end

    assert_redirected_to dev_about_url
  end
end
