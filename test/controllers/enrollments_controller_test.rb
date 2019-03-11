require 'test_helper'

class EnrollmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @enrollment = enrollments(:one)
  end

  test "should get index" do
    get enrollments_url, as: :json
    assert_response :success
  end

  test "should create enrollment" do
    assert_difference('Enrollment.count') do
      post enrollments_url, params: { enrollment: { grade: @enrollment.grade } }, as: :json
    end

    assert_response 201
  end

  test "should show enrollment" do
    get enrollment_url(@enrollment), as: :json
    assert_response :success
  end

  test "should update enrollment" do
    patch enrollment_url(@enrollment), params: { enrollment: { grade: @enrollment.grade } }, as: :json
    assert_response 200
  end

  test "should destroy enrollment" do
    assert_difference('Enrollment.count', -1) do
      delete enrollment_url(@enrollment), as: :json
    end

    assert_response 204
  end
end
