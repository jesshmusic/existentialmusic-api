require "test_helper"

class DevHomesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dev_home = dev_homes(:one)
  end

  test "should get index" do
    get dev_homes_url
    assert_response :success
  end

  test "should get new" do
    get new_dev_home_url
    assert_response :success
  end

  test "should create dev_home" do
    assert_difference("DevHome.count") do
      post dev_homes_url, params: { dev_home: { title: @dev_home.title } }
    end

    assert_redirected_to dev_home_url(DevHome.last)
  end

  test "should show dev_home" do
    get dev_home_url(@dev_home)
    assert_response :success
  end

  test "should get edit" do
    get edit_dev_home_url(@dev_home)
    assert_response :success
  end

  test "should update dev_home" do
    patch dev_home_url(@dev_home), params: { dev_home: { title: @dev_home.title } }
    assert_redirected_to dev_home_url(@dev_home)
  end

  test "should destroy dev_home" do
    assert_difference("DevHome.count", -1) do
      delete dev_home_url(@dev_home)
    end

    assert_redirected_to dev_homes_url
  end
end
