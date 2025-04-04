require "test_helper"

class WorksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @work = works(:one)
  end

  test "should get index" do
    get works_url
    assert_response :success
  end

  test "should get new" do
    get new_work_url
    assert_response :success
  end

  test "should create work" do
    assert_difference("Position.count") do
      post works_url, params: { work: { company: @work.company, description: @work.description, end_date: @work.end_date, role: @work.role, start_date: @work.start_date } }
    end

    assert_redirected_to work_url(Position.last)
  end

  test "should show work" do
    get work_url(@work)
    assert_response :success
  end

  test "should get edit" do
    get edit_work_url(@work)
    assert_response :success
  end

  test "should update work" do
    patch work_url(@work), params: { work: { company: @work.company, description: @work.description, end_date: @work.end_date, role: @work.role, start_date: @work.start_date } }
    assert_redirected_to work_url(@work)
  end

  test "should destroy work" do
    assert_difference("Position.count", -1) do
      delete work_url(@work)
    end

    assert_redirected_to works_url
  end
end
